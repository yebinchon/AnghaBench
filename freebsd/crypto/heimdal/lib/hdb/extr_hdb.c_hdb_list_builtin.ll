; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb.c_hdb_list_builtin.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb.c_hdb_list_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdb_method = type { i8* }

@methods = common dso_local global %struct.hdb_method* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdb_list_builtin(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.hdb_method*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load %struct.hdb_method*, %struct.hdb_method** @methods, align 8
  store %struct.hdb_method* %9, %struct.hdb_method** %6, align 8
  br label %10

10:                                               ; preds = %32, %2
  %11 = load %struct.hdb_method*, %struct.hdb_method** %6, align 8
  %12 = getelementptr inbounds %struct.hdb_method, %struct.hdb_method* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  %16 = load %struct.hdb_method*, %struct.hdb_method** %6, align 8
  %17 = getelementptr inbounds %struct.hdb_method, %struct.hdb_method* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %32

24:                                               ; preds = %15
  %25 = load %struct.hdb_method*, %struct.hdb_method** %6, align 8
  %26 = getelementptr inbounds %struct.hdb_method, %struct.hdb_method* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = add nsw i64 %28, 2
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %24, %23
  %33 = load %struct.hdb_method*, %struct.hdb_method** %6, align 8
  %34 = getelementptr inbounds %struct.hdb_method, %struct.hdb_method* %33, i32 1
  store %struct.hdb_method* %34, %struct.hdb_method** %6, align 8
  br label %10

35:                                               ; preds = %10
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i8* @malloc(i64 %38)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = call i32 @krb5_set_error_message(i32 %43, i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  store i32 %46, i32* %3, align 4
  br label %77

47:                                               ; preds = %35
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 0, i8* %49, align 1
  %50 = load %struct.hdb_method*, %struct.hdb_method** @methods, align 8
  store %struct.hdb_method* %50, %struct.hdb_method** %6, align 8
  br label %51

51:                                               ; preds = %71, %47
  %52 = load %struct.hdb_method*, %struct.hdb_method** %6, align 8
  %53 = getelementptr inbounds %struct.hdb_method, %struct.hdb_method* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load %struct.hdb_method*, %struct.hdb_method** %6, align 8
  %58 = load %struct.hdb_method*, %struct.hdb_method** @methods, align 8
  %59 = icmp ne %struct.hdb_method* %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @strlcat(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.hdb_method*, %struct.hdb_method** %6, align 8
  %67 = getelementptr inbounds %struct.hdb_method, %struct.hdb_method* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @strlcat(i8* %65, i8* %68, i64 %69)
  br label %71

71:                                               ; preds = %64
  %72 = load %struct.hdb_method*, %struct.hdb_method** %6, align 8
  %73 = getelementptr inbounds %struct.hdb_method, %struct.hdb_method* %72, i32 1
  store %struct.hdb_method* %73, %struct.hdb_method** %6, align 8
  br label %51

74:                                               ; preds = %51
  %75 = load i8*, i8** %8, align 8
  %76 = load i8**, i8*** %5, align 8
  store i8* %75, i8** %76, align 8
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %42
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
