; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lib.c_nextfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lib.c_nextfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@infile = common dso_local global i32* null, align 8
@stdin = common dso_local global i32* null, align 8
@argno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nextfile() #0 {
  %1 = load i32*, i32** @infile, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = load i32*, i32** @infile, align 8
  %5 = load i32*, i32** @stdin, align 8
  %6 = icmp ne i32* %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i32*, i32** @infile, align 8
  %9 = call i32 @fclose(i32* %8)
  br label %10

10:                                               ; preds = %7, %3, %0
  store i32* null, i32** @infile, align 8
  %11 = load i32, i32* @argno, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @argno, align 4
  ret void
}

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
