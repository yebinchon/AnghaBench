; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcompile.c_CmFlushSourceCode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcompile.c_CmFlushSourceCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASL_FILE_INPUT = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CmFlushSourceCode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CmFlushSourceCode() #0 {
  %1 = alloca i8, align 1
  br label %2

2:                                                ; preds = %7, %0
  %3 = load i32, i32* @ASL_FILE_INPUT, align 4
  %4 = call i64 @FlReadFile(i32 %3, i8* %1, i32 1)
  %5 = load i64, i64* @AE_ERROR, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i8, i8* %1, align 1
  %9 = sext i8 %8 to i32
  %10 = call i32 @AslInsertLineBuffer(i32 %9)
  br label %2

11:                                               ; preds = %2
  %12 = call i32 (...) @AslResetCurrentLineBuffer()
  ret void
}

declare dso_local i64 @FlReadFile(i32, i8*, i32) #1

declare dso_local i32 @AslInsertLineBuffer(i32) #1

declare dso_local i32 @AslResetCurrentLineBuffer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
