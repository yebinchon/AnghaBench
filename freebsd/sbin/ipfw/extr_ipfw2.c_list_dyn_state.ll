; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_list_dyn_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_list_dyn_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdline_opts = type { i32 }
%struct.format_opts = type { i64, i64 }
%struct.TYPE_3__ = type { i8 }
%struct.buf_pr = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdline_opts*, %struct.format_opts*, i8*, i8*)* @list_dyn_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_dyn_state(%struct.cmdline_opts* %0, %struct.format_opts* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.cmdline_opts*, align 8
  %6 = alloca %struct.format_opts*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca %struct.buf_pr*, align 8
  store %struct.cmdline_opts* %0, %struct.cmdline_opts** %5, align 8
  store %struct.format_opts* %1, %struct.format_opts** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.buf_pr*
  store %struct.buf_pr* %16, %struct.buf_pr** %12, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 (i8*, ...) @bcopy(i8* %18, i64* %9, i64 8)
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.format_opts*, %struct.format_opts** %6, align 8
  %22 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %62

26:                                               ; preds = %4
  %27 = load %struct.cmdline_opts*, %struct.cmdline_opts** %5, align 8
  %28 = getelementptr inbounds %struct.cmdline_opts, %struct.cmdline_opts* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = getelementptr inbounds i8, i8* %33, i64 8
  %35 = call i32 (i8*, ...) @bcopy(i8* %34, i32* %10, i64 4)
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.cmdline_opts*, %struct.cmdline_opts** %5, align 8
  %38 = getelementptr inbounds %struct.cmdline_opts, %struct.cmdline_opts* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp ne i32 %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %62

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.format_opts*, %struct.format_opts** %6, align 8
  %47 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load %struct.cmdline_opts*, %struct.cmdline_opts** %5, align 8
  %52 = load %struct.format_opts*, %struct.format_opts** %6, align 8
  %53 = load %struct.buf_pr*, %struct.buf_pr** %12, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %55 = call i32 @show_dyn_state(%struct.cmdline_opts* %51, %struct.format_opts* %52, %struct.buf_pr* %53, %struct.TYPE_3__* %54)
  %56 = load %struct.buf_pr*, %struct.buf_pr** %12, align 8
  %57 = getelementptr inbounds %struct.buf_pr, %struct.buf_pr* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load %struct.buf_pr*, %struct.buf_pr** %12, align 8
  %61 = call i32 @bp_flush(%struct.buf_pr* %60)
  br label %62

62:                                               ; preds = %25, %42, %50, %44
  ret void
}

declare dso_local i32 @bcopy(i8*, ...) #1

declare dso_local i32 @show_dyn_state(%struct.cmdline_opts*, %struct.format_opts*, %struct.buf_pr*, %struct.TYPE_3__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @bp_flush(%struct.buf_pr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
