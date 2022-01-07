; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_context.c_set_etypes.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_context.c_set_etypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"libdefaults\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ETYPE_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32**)* @set_etypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_etypes(i32 %0, i8* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %9, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i8** @krb5_config_get_strings(i32 %14, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %15, i32* null)
  store i8** %16, i8*** %8, align 8
  %17 = load i8**, i8*** %8, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %19, label %87

19:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %28, %19
  %21 = load i8**, i8*** %8, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %10, align 4
  br label %20

31:                                               ; preds = %20
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32* @malloc(i32 %36)
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = load i8**, i8*** %8, align 8
  %42 = call i32 @krb5_config_free_strings(i8** %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 @krb5_set_error_message(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %4, align 4
  br label %90

48:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %76, %48
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = load i8**, i8*** %8, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @krb5_string_to_enctype(i32 %54, i8* %59, i32* %13)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %76

63:                                               ; preds = %53
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i64 @krb5_enctype_valid(i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %76

69:                                               ; preds = %63
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %70, i32* %75, align 4
  br label %76

76:                                               ; preds = %69, %68, %62
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %49

79:                                               ; preds = %49
  %80 = load i32, i32* @ETYPE_NULL, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  %85 = load i8**, i8*** %8, align 8
  %86 = call i32 @krb5_config_free_strings(i8** %85)
  br label %87

87:                                               ; preds = %79, %3
  %88 = load i32*, i32** %9, align 8
  %89 = load i32**, i32*** %7, align 8
  store i32* %88, i32** %89, align 8
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %40
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i8** @krb5_config_get_strings(i32, i32*, i8*, i8*, i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @krb5_config_free_strings(i8**) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i64 @krb5_string_to_enctype(i32, i8*, i32*) #1

declare dso_local i64 @krb5_enctype_valid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
