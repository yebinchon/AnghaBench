; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpjdlog/extr_pjdlog.c_pjdlog_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpjdlog/extr_pjdlog.c_pjdlog_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pjdlog_initialized = common dso_local global i64 0, align 8
@PJDLOG_NEVER_INITIALIZED = common dso_local global i64 0, align 8
@PJDLOG_NOT_INITIALIZED = common dso_local global i64 0, align 8
@PJDLOG_MODE_STD = common dso_local global i32 0, align 4
@PJDLOG_MODE_SYSLOG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@__use_xprintf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"T\00", align 1
@pjdlog_printf_render_humanized_number = common dso_local global i32 0, align 4
@pjdlog_printf_arginfo_humanized_number = common dso_local global i32 0, align 4
@pjdlog_printf_render_sockaddr_ip = common dso_local global i32 0, align 4
@pjdlog_printf_arginfo_sockaddr = common dso_local global i32 0, align 4
@pjdlog_printf_render_sockaddr = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@LOG_LOCAL0 = common dso_local global i32 0, align 4
@pjdlog_mode = common dso_local global i32 0, align 4
@pjdlog_debug_level = common dso_local global i64 0, align 8
@pjdlog_prefix_current = common dso_local global i64 0, align 8
@pjdlog_prefix = common dso_local global i8** null, align 8
@PJDLOG_INITIALIZED = common dso_local global i64 0, align 8
@pjdlog_sock = common dso_local global i32 0, align 4
@PJDLOG_MODE_SOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pjdlog_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @pjdlog_initialized, align 8
  %5 = load i64, i64* @PJDLOG_NEVER_INITIALIZED, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @pjdlog_initialized, align 8
  %9 = load i64, i64* @PJDLOG_NOT_INITIALIZED, align 8
  %10 = icmp eq i64 %8, %9
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i1 [ true, %1 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @PJDLOG_MODE_STD, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @PJDLOG_MODE_SYSLOG, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi i1 [ true, %11 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* @errno, align 4
  store i32 %26, i32* %3, align 4
  %27 = load i64, i64* @pjdlog_initialized, align 8
  %28 = load i64, i64* @PJDLOG_NEVER_INITIALIZED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  store i32 1, i32* @__use_xprintf, align 4
  %31 = call i32 @register_printf_render_std(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @pjdlog_printf_render_humanized_number, align 4
  %33 = load i32, i32* @pjdlog_printf_arginfo_humanized_number, align 4
  %34 = call i32 @register_printf_render(i8 signext 78, i32 %32, i32 %33)
  %35 = load i32, i32* @pjdlog_printf_render_sockaddr_ip, align 4
  %36 = load i32, i32* @pjdlog_printf_arginfo_sockaddr, align 4
  %37 = call i32 @register_printf_render(i8 signext 73, i32 %35, i32 %36)
  %38 = load i32, i32* @pjdlog_printf_render_sockaddr, align 4
  %39 = load i32, i32* @pjdlog_printf_arginfo_sockaddr, align 4
  %40 = call i32 @register_printf_render(i8 signext 83, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %30, %22
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @PJDLOG_MODE_SYSLOG, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* @LOG_PID, align 4
  %47 = load i32, i32* @LOG_NDELAY, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @LOG_LOCAL0, align 4
  %50 = call i32 @openlog(i32* null, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %41
  %52 = load i32, i32* %2, align 4
  store i32 %52, i32* @pjdlog_mode, align 4
  store i64 0, i64* @pjdlog_debug_level, align 8
  store i64 0, i64* @pjdlog_prefix_current, align 8
  %53 = load i8**, i8*** @pjdlog_prefix, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 0, i8* %56, align 1
  %57 = load i64, i64* @PJDLOG_INITIALIZED, align 8
  store i64 %57, i64* @pjdlog_initialized, align 8
  store i32 -1, i32* @pjdlog_sock, align 4
  %58 = load i32, i32* %3, align 4
  store i32 %58, i32* @errno, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @register_printf_render_std(i8*) #1

declare dso_local i32 @register_printf_render(i8 signext, i32, i32) #1

declare dso_local i32 @openlog(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
