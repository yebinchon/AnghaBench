; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exec.c_pexerr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exec.c_pexerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@expath = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@exerr = common dso_local global i64 0, align 8
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_STRING = common dso_local global i32 0, align 4
@ERR_COMMAND = common dso_local global i32 0, align 4
@Vexpath = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pexerr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pexerr() #0 {
  %1 = load i64, i64* @expath, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load i64, i64* @expath, align 8
  %5 = call i8* @short2str(i64 %4)
  %6 = call i32 @setname(i8* %5)
  %7 = load i64, i64* @expath, align 8
  %8 = call i32 @xfree(i64 %7)
  store i64 0, i64* @expath, align 8
  br label %11

9:                                                ; preds = %0
  %10 = call i32 @setname(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %3
  %12 = load i64, i64* @exerr, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* @ERR_NAME, align 4
  %16 = load i32, i32* @ERR_STRING, align 4
  %17 = or i32 %15, %16
  %18 = load i64, i64* @exerr, align 8
  %19 = call i32 (i32, ...) @stderror(i32 %17, i64 %18)
  br label %20

20:                                               ; preds = %14, %11
  %21 = load i32, i32* @ERR_NAME, align 4
  %22 = load i32, i32* @ERR_COMMAND, align 4
  %23 = or i32 %21, %22
  %24 = call i32 (i32, ...) @stderror(i32 %23)
  ret void
}

declare dso_local i32 @setname(i8*) #1

declare dso_local i8* @short2str(i64) #1

declare dso_local i32 @xfree(i64) #1

declare dso_local i32 @stderror(i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
