; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmaestro.c_log_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmaestro.c_log_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s:%lu: %s\0A\00", align 1
@logfile = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"client send bad log command: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @log_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_function(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.client*
  store %struct.client* %9, %struct.client** %3, align 8
  br label %10

10:                                               ; preds = %1, %78
  %11 = load %struct.client*, %struct.client** %3, align 8
  %12 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @krb5_ret_int32(i32 %13, i32* %4)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %79

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %75 [
    i32 128, label %19
    i32 129, label %29
    i32 130, label %29
  ]

19:                                               ; preds = %17
  %20 = load %struct.client*, %struct.client** %3, align 8
  %21 = getelementptr inbounds %struct.client, %struct.client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @krb5_ret_string(i32 %22, i8** %6)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %79

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @free(i8* %27)
  br label %78

29:                                               ; preds = %17, %17
  %30 = load %struct.client*, %struct.client** %3, align 8
  %31 = getelementptr inbounds %struct.client, %struct.client* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @krb5_ret_string(i32 %32, i8** %6)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %79

36:                                               ; preds = %29
  %37 = load %struct.client*, %struct.client** %3, align 8
  %38 = getelementptr inbounds %struct.client, %struct.client* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @krb5_ret_int32(i32 %39, i32* %5)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %79

43:                                               ; preds = %36
  %44 = load %struct.client*, %struct.client** %3, align 8
  %45 = getelementptr inbounds %struct.client, %struct.client* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @krb5_ret_string(i32 %46, i8** %7)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %79

50:                                               ; preds = %43
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %51, i64 %53, i8* %54)
  %56 = load i32, i32* @logfile, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %57, i64 %59, i8* %60)
  %62 = load i32, i32* @logfile, align 4
  %63 = call i32 @fflush(i32 %62)
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @free(i8* %64)
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load %struct.client*, %struct.client** %3, align 8
  %69 = getelementptr inbounds %struct.client, %struct.client* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @krb5_store_int32(i32 %70, i32 0)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %50
  br label %79

74:                                               ; preds = %50
  br label %78

75:                                               ; preds = %17
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %75, %74, %26
  br label %10

79:                                               ; preds = %73, %49, %42, %35, %25, %16
  ret i32 0
}

declare dso_local i64 @krb5_ret_int32(i32, i32*) #1

declare dso_local i32 @krb5_ret_string(i32, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i64, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i64, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @krb5_store_int32(i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
