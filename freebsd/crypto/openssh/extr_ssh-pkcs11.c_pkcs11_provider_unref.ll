; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-pkcs11.c_pkcs11_provider_unref.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-pkcs11.c_pkcs11_provider_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs11_provider = type { i64, %struct.pkcs11_provider*, %struct.pkcs11_provider*, i64 }

@.str = private unnamed_addr constant [38 x i8] c"pkcs11_provider_unref: %p refcount %d\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"pkcs11_provider_unref: %p still valid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pkcs11_provider*)* @pkcs11_provider_unref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkcs11_provider_unref(%struct.pkcs11_provider* %0) #0 {
  %2 = alloca %struct.pkcs11_provider*, align 8
  store %struct.pkcs11_provider* %0, %struct.pkcs11_provider** %2, align 8
  %3 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %4 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %5 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.pkcs11_provider* %3, i64 %6)
  %8 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %9 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %15 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %20 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.pkcs11_provider* %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %23 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %22, i32 0, i32 2
  %24 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %23, align 8
  %25 = call i32 @free(%struct.pkcs11_provider* %24)
  %26 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %27 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %26, i32 0, i32 1
  %28 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %27, align 8
  %29 = call i32 @free(%struct.pkcs11_provider* %28)
  %30 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %31 = call i32 @free(%struct.pkcs11_provider* %30)
  br label %32

32:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @debug(i8*, %struct.pkcs11_provider*, i64) #1

declare dso_local i32 @error(i8*, %struct.pkcs11_provider*) #1

declare dso_local i32 @free(%struct.pkcs11_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
