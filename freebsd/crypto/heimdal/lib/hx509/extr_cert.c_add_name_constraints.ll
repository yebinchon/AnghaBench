; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_add_name_constraints.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_add_name_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@HX509_EXTENSION_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed getting NameConstraints\00", align 1
@HX509_VERIFY_CONSTRAINTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Not a CA and have NameConstraints\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, %struct.TYPE_3__*)* @add_name_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_name_constraints(i32 %0, i32* %1, i32 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @find_extension_name_constraints(i32* %13, i32* %10)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @HX509_EXTENSION_NOT_FOUND, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %82

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @hx509_set_error_string(i32 %23, i32 0, i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %82

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* @HX509_VERIFY_CONSTRAINTS, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @hx509_set_error_string(i32 %32, i32 0, i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %76

35:                                               ; preds = %27
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32* @realloc(i32* %38, i32 %45)
  store i32* %46, i32** %12, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %35
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @hx509_clear_error_string(i32 %50)
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* %11, align 4
  br label %79

53:                                               ; preds = %35
  %54 = load i32*, i32** %12, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = call i32 @copy_NameConstraints(i32* %10, i32* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %53
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @hx509_clear_error_string(i32 %69)
  br label %79

71:                                               ; preds = %53
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %71, %30
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78, %68, %49
  %80 = call i32 @free_NameConstraints(i32* %10)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %22, %18
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @find_extension_name_constraints(i32*, i32*) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

declare dso_local i32 @copy_NameConstraints(i32*, i32*) #1

declare dso_local i32 @free_NameConstraints(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
