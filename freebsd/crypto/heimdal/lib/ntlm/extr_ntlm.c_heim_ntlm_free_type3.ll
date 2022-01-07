; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_free_type3.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_free_type3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_type3 = type { i32, i64, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heim_ntlm_free_type3(%struct.ntlm_type3* %0) #0 {
  %2 = alloca %struct.ntlm_type3*, align 8
  store %struct.ntlm_type3* %0, %struct.ntlm_type3** %2, align 8
  %3 = load %struct.ntlm_type3*, %struct.ntlm_type3** %2, align 8
  %4 = getelementptr inbounds %struct.ntlm_type3, %struct.ntlm_type3* %3, i32 0, i32 5
  %5 = call i32 @heim_ntlm_free_buf(i32* %4)
  %6 = load %struct.ntlm_type3*, %struct.ntlm_type3** %2, align 8
  %7 = getelementptr inbounds %struct.ntlm_type3, %struct.ntlm_type3* %6, i32 0, i32 4
  %8 = call i32 @heim_ntlm_free_buf(i32* %7)
  %9 = load %struct.ntlm_type3*, %struct.ntlm_type3** %2, align 8
  %10 = getelementptr inbounds %struct.ntlm_type3, %struct.ntlm_type3* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.ntlm_type3*, %struct.ntlm_type3** %2, align 8
  %15 = getelementptr inbounds %struct.ntlm_type3, %struct.ntlm_type3* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @free(i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.ntlm_type3*, %struct.ntlm_type3** %2, align 8
  %20 = getelementptr inbounds %struct.ntlm_type3, %struct.ntlm_type3* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.ntlm_type3*, %struct.ntlm_type3** %2, align 8
  %25 = getelementptr inbounds %struct.ntlm_type3, %struct.ntlm_type3* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @free(i64 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.ntlm_type3*, %struct.ntlm_type3** %2, align 8
  %30 = getelementptr inbounds %struct.ntlm_type3, %struct.ntlm_type3* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.ntlm_type3*, %struct.ntlm_type3** %2, align 8
  %35 = getelementptr inbounds %struct.ntlm_type3, %struct.ntlm_type3* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @free(i64 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.ntlm_type3*, %struct.ntlm_type3** %2, align 8
  %40 = getelementptr inbounds %struct.ntlm_type3, %struct.ntlm_type3* %39, i32 0, i32 0
  %41 = call i32 @heim_ntlm_free_buf(i32* %40)
  %42 = load %struct.ntlm_type3*, %struct.ntlm_type3** %2, align 8
  %43 = call i32 @memset(%struct.ntlm_type3* %42, i32 0, i32 40)
  ret void
}

declare dso_local i32 @heim_ntlm_free_buf(i32*) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @memset(%struct.ntlm_type3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
