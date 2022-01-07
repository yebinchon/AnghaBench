; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_choose_kex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_choose_kex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kex = type { i8*, i32, i32, i32 }
%struct.kexalg = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"kex: algorithm: %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"(no match)\00", align 1
@SSH_ERR_NO_KEX_ALG_MATCH = common dso_local global i32 0, align 4
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kex*, i8*, i8*)* @choose_kex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choose_kex(%struct.kex* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kex*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kexalg*, align 8
  store %struct.kex* %0, %struct.kex** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i8* @match_list(i8* %9, i8* %10, i32* null)
  %12 = load %struct.kex*, %struct.kex** %5, align 8
  %13 = getelementptr inbounds %struct.kex, %struct.kex* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load %struct.kex*, %struct.kex** %5, align 8
  %15 = getelementptr inbounds %struct.kex, %struct.kex* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.kex*, %struct.kex** %5, align 8
  %20 = getelementptr inbounds %struct.kex, %struct.kex* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i8* [ %21, %18 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %22 ]
  %25 = call i32 @debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.kex*, %struct.kex** %5, align 8
  %27 = getelementptr inbounds %struct.kex, %struct.kex* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @SSH_ERR_NO_KEX_ALG_MATCH, align 4
  store i32 %31, i32* %4, align 4
  br label %56

32:                                               ; preds = %23
  %33 = load %struct.kex*, %struct.kex** %5, align 8
  %34 = getelementptr inbounds %struct.kex, %struct.kex* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call %struct.kexalg* @kex_alg_by_name(i8* %35)
  store %struct.kexalg* %36, %struct.kexalg** %8, align 8
  %37 = icmp eq %struct.kexalg* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %39, i32* %4, align 4
  br label %56

40:                                               ; preds = %32
  %41 = load %struct.kexalg*, %struct.kexalg** %8, align 8
  %42 = getelementptr inbounds %struct.kexalg, %struct.kexalg* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.kex*, %struct.kex** %5, align 8
  %45 = getelementptr inbounds %struct.kex, %struct.kex* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.kexalg*, %struct.kexalg** %8, align 8
  %47 = getelementptr inbounds %struct.kexalg, %struct.kexalg* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.kex*, %struct.kex** %5, align 8
  %50 = getelementptr inbounds %struct.kex, %struct.kex* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.kexalg*, %struct.kexalg** %8, align 8
  %52 = getelementptr inbounds %struct.kexalg, %struct.kexalg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.kex*, %struct.kex** %5, align 8
  %55 = getelementptr inbounds %struct.kex, %struct.kex* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %40, %38, %30
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i8* @match_list(i8*, i8*, i32*) #1

declare dso_local i32 @debug(i8*, i8*) #1

declare dso_local %struct.kexalg* @kex_alg_by_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
