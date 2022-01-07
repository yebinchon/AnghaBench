; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-rand.c_seed_something.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-rand.c_seed_something.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"libdefaults\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"egd_socket\00", align 1
@ENTROPY_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @seed_something to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seed_something() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %9 = call i64 @RAND_file_name(i8* %8, i32 256)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %0
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = load i32, i32* @O_BINARY, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @O_CLOEXEC, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @open(i8* %12, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %11
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @rk_cloexec(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %26 = call i64 @read(i32 %24, i8* %25, i32 1024)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @RAND_add(i8* %30, i64 %31, double 0.000000e+00)
  br label %33

33:                                               ; preds = %29, %21
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @close(i32 %34)
  br label %38

36:                                               ; preds = %11
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %37, align 16
  br label %38

38:                                               ; preds = %36, %33
  br label %41

39:                                               ; preds = %0
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %40, align 16
  br label %41

41:                                               ; preds = %39, %38
  %42 = call i32 (...) @RAND_status()
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = call i32 @krb5_init_context(i32* %6)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = call i8* @krb5_config_get_string(i32 %48, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* @ENTROPY_NEEDED, align 4
  %55 = call i32 @RAND_egd_bytes(i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @krb5_free_context(i32 %57)
  br label %59

59:                                               ; preds = %56, %44
  br label %60

60:                                               ; preds = %59, %41
  %61 = call i32 (...) @RAND_status()
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %65 = load i8, i8* %64, align 16
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %69 = call i32 @RAND_write_file(i8* %68)
  br label %70

70:                                               ; preds = %67, %63
  store i32 0, i32* %1, align 4
  br label %72

71:                                               ; preds = %60
  store i32 -1, i32* %1, align 4
  br label %72

72:                                               ; preds = %71, %70
  %73 = load i32, i32* %1, align 4
  ret i32 %73
}

declare dso_local i64 @RAND_file_name(i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @rk_cloexec(i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @RAND_add(i8*, i64, double) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @RAND_status(...) #1

declare dso_local i32 @krb5_init_context(i32*) #1

declare dso_local i8* @krb5_config_get_string(i32, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @RAND_egd_bytes(i8*, i32) #1

declare dso_local i32 @krb5_free_context(i32) #1

declare dso_local i32 @RAND_write_file(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
