; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_common_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_krbhst_data = type { i32, i32*, i32*, i32, i32* }

@.str = private unnamed_addr constant [48 x i8] c"Trying to find service %s for realm %s flags %x\00", align 1
@KD_CONFIG_EXISTS = common dso_local global i32 0, align 4
@KRB5_KRBHST_FLAGS_LARGE_MSG = common dso_local global i32 0, align 4
@KD_LARGE_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.krb5_krbhst_data* (i32, i8*, i8*, i32)* @common_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.krb5_krbhst_data* @common_init(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.krb5_krbhst_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.krb5_krbhst_data*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = call %struct.krb5_krbhst_data* @calloc(i32 1, i32 40)
  store %struct.krb5_krbhst_data* %11, %struct.krb5_krbhst_data** %10, align 8
  %12 = icmp eq %struct.krb5_krbhst_data* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store %struct.krb5_krbhst_data* null, %struct.krb5_krbhst_data** %5, align 8
  br label %57

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = call i32* @strdup(i8* %15)
  %17 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %10, align 8
  %18 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %17, i32 0, i32 4
  store i32* %16, i32** %18, align 8
  %19 = icmp eq i32* %16, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %10, align 8
  %22 = call i32 @free(%struct.krb5_krbhst_data* %21)
  store %struct.krb5_krbhst_data* null, %struct.krb5_krbhst_data** %5, align 8
  br label %57

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @_krb5_debug(i32 %24, i32 2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26, i32 %27)
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @strchr(i8* %29, i8 signext 46)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @KD_CONFIG_EXISTS, align 4
  %34 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %10, align 8
  %35 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %32, %23
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @KRB5_KRBHST_FLAGS_LARGE_MSG, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* @KD_LARGE_MSG, align 4
  %45 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %10, align 8
  %46 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %10, align 8
  %51 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %50, i32 0, i32 0
  %52 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %10, align 8
  %53 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %10, align 8
  %55 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %54, i32 0, i32 2
  store i32* %51, i32** %55, align 8
  %56 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %10, align 8
  store %struct.krb5_krbhst_data* %56, %struct.krb5_krbhst_data** %5, align 8
  br label %57

57:                                               ; preds = %49, %20, %13
  %58 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %5, align 8
  ret %struct.krb5_krbhst_data* %58
}

declare dso_local %struct.krb5_krbhst_data* @calloc(i32, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.krb5_krbhst_data*) #1

declare dso_local i32 @_krb5_debug(i32, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
