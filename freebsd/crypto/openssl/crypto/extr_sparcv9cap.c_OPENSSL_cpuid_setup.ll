; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_sparcv9cap.c_OPENSSL_cpuid_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_sparcv9cap.c_OPENSSL_cpuid_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32 }

@OPENSSL_cpuid_setup.trigger = internal global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"OPENSSL_sparcv9cap\00", align 1
@OPENSSL_sparcv9cap_P = common dso_local global i32* null, align 8
@SPARCV9_PREFER_FPU = common dso_local global i32 0, align 4
@SPARCV9_TICK_PRIVILEGED = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@common_handler = common dso_local global i32 0, align 4
@common_jmp = common dso_local global i32 0, align 4
@SPARCV9_VIS1 = common dso_local global i32 0, align 4
@SPARCV9_BLK = common dso_local global i32 0, align 4
@SPARCV9_VIS2 = common dso_local global i32 0, align 4
@SPARCV9_FMADD = common dso_local global i32 0, align 4
@SPARCV9_VIS3 = common dso_local global i32 0, align 4
@SPARCV9_FJAESX = common dso_local global i32 0, align 4
@SPARCV9_64BIT_STACK = common dso_local global i32 0, align 4
@CFR_CRC32C = common dso_local global i32 0, align 4
@CFR_MONTMUL = common dso_local global i32 0, align 4
@CFR_XMONTMUL = common dso_local global i32 0, align 4
@CFR_XMONTSQR = common dso_local global i32 0, align 4
@CFR_XMPMUL = common dso_local global i32 0, align 4
@SIGEMT = common dso_local global i32 0, align 4
@SPARCV9_FJDESX = common dso_local global i32 0, align 4
@SPARCV9_FJHPCACE = common dso_local global i32 0, align 4
@SPARCV9_IMA = common dso_local global i32 0, align 4
@SPARCV9_VIS4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OPENSSL_cpuid_setup() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.sigaction, align 4
  %3 = alloca %struct.sigaction, align 4
  %4 = alloca %struct.sigaction, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @OPENSSL_cpuid_setup.trigger, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %160

10:                                               ; preds = %0
  store i32 1, i32* @OPENSSL_cpuid_setup.trigger, align 4
  %11 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %1, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load i8*, i8** %1, align 8
  %15 = call i32 @strtoul(i8* %14, i32* null, i32 0)
  %16 = load i32*, i32** @OPENSSL_sparcv9cap_P, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %15, i32* %17, align 4
  %18 = load i8*, i8** %1, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 58)
  store i8* %19, i8** %1, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load i8*, i8** %1, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = call i32 @strtoul(i8* %23, i32* null, i32 0)
  %25 = load i32*, i32** @OPENSSL_sparcv9cap_P, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %13
  br label %160

28:                                               ; preds = %10
  %29 = load i32, i32* @SPARCV9_PREFER_FPU, align 4
  %30 = load i32, i32* @SPARCV9_TICK_PRIVILEGED, align 4
  %31 = or i32 %29, %30
  %32 = load i32*, i32** @OPENSSL_sparcv9cap_P, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %31, i32* %33, align 4
  %34 = call i32 @sigfillset(i32* %5)
  %35 = load i32, i32* @SIGILL, align 4
  %36 = call i32 @sigdelset(i32* %5, i32 %35)
  %37 = load i32, i32* @SIGTRAP, align 4
  %38 = call i32 @sigdelset(i32* %5, i32 %37)
  %39 = load i32, i32* @SIGFPE, align 4
  %40 = call i32 @sigdelset(i32* %5, i32 %39)
  %41 = load i32, i32* @SIGBUS, align 4
  %42 = call i32 @sigdelset(i32* %5, i32 %41)
  %43 = load i32, i32* @SIGSEGV, align 4
  %44 = call i32 @sigdelset(i32* %5, i32 %43)
  %45 = load i32, i32* @SIG_SETMASK, align 4
  %46 = call i32 @sigprocmask(i32 %45, i32* %5, i32* %6)
  %47 = call i32 @memset(%struct.sigaction* %2, i32 0, i32 8)
  %48 = load i32, i32* @common_handler, align 4
  %49 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @SIGILL, align 4
  %53 = call i32 @sigaction(i32 %52, %struct.sigaction* %2, %struct.sigaction* %3)
  %54 = load i32, i32* @SIGBUS, align 4
  %55 = call i32 @sigaction(i32 %54, %struct.sigaction* %2, %struct.sigaction* %4)
  %56 = load i32, i32* @common_jmp, align 4
  %57 = call i64 @sigsetjmp(i32 %56, i32 1) #3
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %28
  %60 = call i32 (...) @_sparcv9_rdtick()
  %61 = load i32, i32* @SPARCV9_TICK_PRIVILEGED, align 4
  %62 = xor i32 %61, -1
  %63 = load i32*, i32** @OPENSSL_sparcv9cap_P, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %59, %28
  %68 = load i32, i32* @common_jmp, align 4
  %69 = call i64 @sigsetjmp(i32 %68, i32 1) #3
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %67
  %72 = call i32 (...) @_sparcv9_vis1_probe()
  %73 = load i32, i32* @SPARCV9_VIS1, align 4
  %74 = load i32, i32* @SPARCV9_BLK, align 4
  %75 = or i32 %73, %74
  %76 = load i32*, i32** @OPENSSL_sparcv9cap_P, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = call i32 (...) @_sparcv9_vis1_instrument()
  %81 = icmp sge i32 %80, 12
  br i1 %81, label %82, label %91

82:                                               ; preds = %71
  %83 = load i32, i32* @SPARCV9_VIS1, align 4
  %84 = load i32, i32* @SPARCV9_PREFER_FPU, align 4
  %85 = or i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = load i32*, i32** @OPENSSL_sparcv9cap_P, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %98

91:                                               ; preds = %71
  %92 = call i32 (...) @_sparcv9_vis2_probe()
  %93 = load i32, i32* @SPARCV9_VIS2, align 4
  %94 = load i32*, i32** @OPENSSL_sparcv9cap_P, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %91, %82
  br label %99

99:                                               ; preds = %98, %67
  %100 = load i32, i32* @common_jmp, align 4
  %101 = call i64 @sigsetjmp(i32 %100, i32 1) #3
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = call i32 (...) @_sparcv9_fmadd_probe()
  %105 = load i32, i32* @SPARCV9_FMADD, align 4
  %106 = load i32*, i32** @OPENSSL_sparcv9cap_P, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %103, %99
  %111 = load i32, i32* @common_jmp, align 4
  %112 = call i64 @sigsetjmp(i32 %111, i32 1) #3
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = call i32 (...) @_sparcv9_vis3_probe()
  %116 = load i32, i32* @SPARCV9_VIS3, align 4
  %117 = load i32*, i32** @OPENSSL_sparcv9cap_P, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %114, %110
  %122 = load i32, i32* @common_jmp, align 4
  %123 = call i64 @sigsetjmp(i32 %122, i32 1) #3
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = call i32 (...) @_sparcv9_fjaesx_probe()
  %127 = load i32, i32* @SPARCV9_FJAESX, align 4
  %128 = load i32*, i32** @OPENSSL_sparcv9cap_P, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %125, %121
  %133 = load i32*, i32** @OPENSSL_sparcv9cap_P, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @SPARCV9_VIS3, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %132
  %140 = load i32, i32* @common_jmp, align 4
  %141 = call i64 @sigsetjmp(i32 %140, i32 1) #3
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = call i64 (...) @_sparcv9_rdcfr()
  %145 = trunc i64 %144 to i32
  %146 = load i32*, i32** @OPENSSL_sparcv9cap_P, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %143, %139, %132
  %149 = load i32, i32* @SIGBUS, align 4
  %150 = call i32 @sigaction(i32 %149, %struct.sigaction* %4, %struct.sigaction* null)
  %151 = load i32, i32* @SIGILL, align 4
  %152 = call i32 @sigaction(i32 %151, %struct.sigaction* %3, %struct.sigaction* null)
  %153 = load i32, i32* @SIG_SETMASK, align 4
  %154 = call i32 @sigprocmask(i32 %153, i32* %6, i32* null)
  %155 = load i32, i32* @SPARCV9_64BIT_STACK, align 4
  %156 = load i32*, i32** @OPENSSL_sparcv9cap_P, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %148, %27, %9
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigdelset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

; Function Attrs: returns_twice
declare dso_local i64 @sigsetjmp(i32, i32) #2

declare dso_local i32 @_sparcv9_rdtick(...) #1

declare dso_local i32 @_sparcv9_vis1_probe(...) #1

declare dso_local i32 @_sparcv9_vis1_instrument(...) #1

declare dso_local i32 @_sparcv9_vis2_probe(...) #1

declare dso_local i32 @_sparcv9_fmadd_probe(...) #1

declare dso_local i32 @_sparcv9_vis3_probe(...) #1

declare dso_local i32 @_sparcv9_fjaesx_probe(...) #1

declare dso_local i64 @_sparcv9_rdcfr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
