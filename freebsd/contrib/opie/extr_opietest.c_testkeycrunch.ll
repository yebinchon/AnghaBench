; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/opie/extr_opietest.c_testkeycrunch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/opie/extr_opietest.c_testkeycrunch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opie_otpkey = type { i32 }

@testkeycrunch.testin1 = internal global [7 x i8] c"ke1234\00", align 1
@testkeycrunch.testin2 = internal global [15 x i8] c"this is a test\00", align 1
@testkeycrunch.testout = internal global [4 x i8] c".\D3]t", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testkeycrunch() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.opie_otpkey, align 4
  %3 = call i64 @opiekeycrunch(i32 5, %struct.opie_otpkey* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @testkeycrunch.testin1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @testkeycrunch.testin2, i64 0, i64 0))
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %11

6:                                                ; preds = %0
  %7 = call i64 @memcmp(%struct.opie_otpkey* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @testkeycrunch.testout, i64 0, i64 0), i32 4)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32 -1, i32* %1, align 4
  br label %11

10:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %10, %9, %5
  %12 = load i32, i32* %1, align 4
  ret i32 %12
}

declare dso_local i64 @opiekeycrunch(i32, %struct.opie_otpkey*, i8*, i8*) #1

declare dso_local i64 @memcmp(%struct.opie_otpkey*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
