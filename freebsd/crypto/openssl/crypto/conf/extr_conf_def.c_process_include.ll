; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_def.c_process_include.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_def.c_process_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@SYS_F_STAT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@CONF_F_PROCESS_INCLUDE = common dso_local global i32 0, align 4
@CONF_R_RECURSIVE_DIRECTORY_INCLUDE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32**, i8**)* @process_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @process_include(i8* %0, i32** %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = bitcast %struct.stat* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @stat(i8* %11, %struct.stat* %8)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* @SYS_F_STAT, align 4
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @SYSerr(i32 %15, i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @ERR_add_error_data(i32 1, i8* %18)
  store i32* null, i32** %4, align 8
  br label %49

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @S_ISDIR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load i32**, i32*** %6, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* @CONF_F_PROCESS_INCLUDE, align 4
  %31 = load i32, i32* @CONF_R_RECURSIVE_DIRECTORY_INCLUDE, align 4
  %32 = call i32 @CONFerr(i32 %30, i32 %31)
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @ERR_add_error_data(i32 1, i8* %33)
  store i32* null, i32** %4, align 8
  br label %49

35:                                               ; preds = %25
  %36 = load i8*, i8** %5, align 8
  %37 = load i32**, i32*** %6, align 8
  %38 = call i32* @get_next_file(i8* %36, i32** %37)
  store i32* %38, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8
  %42 = load i8**, i8*** %7, align 8
  store i8* %41, i8** %42, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32*, i32** %9, align 8
  store i32* %44, i32** %4, align 8
  br label %49

45:                                               ; preds = %20
  %46 = load i8*, i8** %5, align 8
  %47 = call i32* @BIO_new_file(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  store i32* %48, i32** %4, align 8
  br label %49

49:                                               ; preds = %45, %43, %29, %14
  %50 = load i32*, i32** %4, align 8
  ret i32* %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @SYSerr(i32, i32) #2

declare dso_local i32 @ERR_add_error_data(i32, i8*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @CONFerr(i32, i32) #2

declare dso_local i32* @get_next_file(i8*, i32**) #2

declare dso_local i32* @BIO_new_file(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
