; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/opie/extr_opietest.c_testhashmd4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/opie/extr_opietest.c_testhashmd4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opie_otpkey = type { i32 }

@testhashmd4.testin = internal global [4 x i8] c"\01#Eg", align 1
@testhashmd4.testout = internal global [4 x i8] c"\9F@\FB\84", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testhashmd4() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.opie_otpkey, align 4
  %3 = call i32 @memcpy(%struct.opie_otpkey* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @testhashmd4.testin, i64 0, i64 0), i32 4)
  %4 = call i32 @opiehash(%struct.opie_otpkey* %2, i32 4)
  %5 = call i64 @memcmp(%struct.opie_otpkey* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @testhashmd4.testout, i64 0, i64 0), i32 4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %9

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %8, %7
  %10 = load i32, i32* %1, align 4
  ret i32 %10
}

declare dso_local i32 @memcpy(%struct.opie_otpkey*, i8*, i32) #1

declare dso_local i32 @opiehash(%struct.opie_otpkey*, i32) #1

declare dso_local i64 @memcmp(%struct.opie_otpkey*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
