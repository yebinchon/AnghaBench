; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_s390xcap.c_OPENSSL_cpuid_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_s390xcap.c_OPENSSL_cpuid_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.sigaction = type { i32, i32 }

@OPENSSL_s390xcap_P = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ill_handler = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@ill_jmp = common dso_local global i32 0, align 4
@S390X_VX = common dso_local global i32 0, align 4
@S390X_VXD = common dso_local global i32 0, align 4
@S390X_VXE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OPENSSL_cpuid_setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sigaction, align 4
  %3 = alloca %struct.sigaction, align 4
  %4 = alloca %struct.sigaction, align 4
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 0), align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %77

10:                                               ; preds = %0
  %11 = call i32 @S390X_CAPBIT(i32 0)
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 0), align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = call i32 @memset(%struct.sigaction* %2, i32 0, i32 8)
  %17 = load i32, i32* @ill_handler, align 4
  %18 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  %20 = call i32 @sigfillset(i32* %19)
  %21 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  %22 = load i32, i32* @SIGILL, align 4
  %23 = call i32 @sigdelset(i32* %21, i32 %22)
  %24 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  %25 = load i32, i32* @SIGFPE, align 4
  %26 = call i32 @sigdelset(i32* %24, i32 %25)
  %27 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  %28 = load i32, i32* @SIGTRAP, align 4
  %29 = call i32 @sigdelset(i32* %27, i32 %28)
  %30 = load i32, i32* @SIG_SETMASK, align 4
  %31 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  %32 = call i32 @sigprocmask(i32 %30, i32* %31, i32* %1)
  %33 = load i32, i32* @SIGILL, align 4
  %34 = call i32 @sigaction(i32 %33, %struct.sigaction* %2, %struct.sigaction* %3)
  %35 = load i32, i32* @SIGFPE, align 4
  %36 = call i32 @sigaction(i32 %35, %struct.sigaction* %2, %struct.sigaction* %4)
  %37 = load i32, i32* @ill_jmp, align 4
  %38 = call i64 @sigsetjmp(i32 %37, i32 1) #3
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %10
  %41 = call i32 (...) @OPENSSL_s390x_facilities()
  br label %42

42:                                               ; preds = %40, %10
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 0), align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @S390X_VX, align 4
  %47 = call i32 @S390X_CAPBIT(i32 %46)
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load i32, i32* @ill_jmp, align 4
  %52 = call i64 @sigsetjmp(i32 %51, i32 1) #3
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 (...) @OPENSSL_vx_probe()
  br label %70

56:                                               ; preds = %50, %42
  %57 = load i32, i32* @S390X_VX, align 4
  %58 = call i32 @S390X_CAPBIT(i32 %57)
  %59 = load i32, i32* @S390X_VXD, align 4
  %60 = call i32 @S390X_CAPBIT(i32 %59)
  %61 = or i32 %58, %60
  %62 = load i32, i32* @S390X_VXE, align 4
  %63 = call i32 @S390X_CAPBIT(i32 %62)
  %64 = or i32 %61, %63
  %65 = xor i32 %64, -1
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 0), align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %56, %54
  %71 = load i32, i32* @SIGFPE, align 4
  %72 = call i32 @sigaction(i32 %71, %struct.sigaction* %4, %struct.sigaction* null)
  %73 = load i32, i32* @SIGILL, align 4
  %74 = call i32 @sigaction(i32 %73, %struct.sigaction* %3, %struct.sigaction* null)
  %75 = load i32, i32* @SIG_SETMASK, align 4
  %76 = call i32 @sigprocmask(i32 %75, i32* %1, i32* null)
  br label %77

77:                                               ; preds = %70, %9
  ret void
}

declare dso_local i32 @S390X_CAPBIT(i32) #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigdelset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

; Function Attrs: returns_twice
declare dso_local i64 @sigsetjmp(i32, i32) #2

declare dso_local i32 @OPENSSL_s390x_facilities(...) #1

declare dso_local i32 @OPENSSL_vx_probe(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
