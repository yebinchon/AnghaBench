; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/x86/sys/extr_pkru.c_x86_pkru_unprotect_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/x86/sys/extr_pkru.c_x86_pkru_unprotect_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_set_pkru = type { i64, i8* }

@X86_CLEAR_PKRU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x86_pkru_unprotect_range(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.amd64_set_pkru, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i32 @memset(%struct.amd64_set_pkru* %5, i32 0, i32 16)
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds %struct.amd64_set_pkru, %struct.amd64_set_pkru* %5, i32 0, i32 1
  store i8* %7, i8** %8, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.amd64_set_pkru, %struct.amd64_set_pkru* %5, i32 0, i32 0
  store i64 %9, i64* %10, align 8
  %11 = load i32, i32* @X86_CLEAR_PKRU, align 4
  %12 = call i32 @sysarch(i32 %11, %struct.amd64_set_pkru* %5)
  ret i32 %12
}

declare dso_local i32 @memset(%struct.amd64_set_pkru*, i32, i32) #1

declare dso_local i32 @sysarch(i32, %struct.amd64_set_pkru*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
