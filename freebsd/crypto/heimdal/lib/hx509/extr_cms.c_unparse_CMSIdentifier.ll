; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cms.c_unparse_CMSIdentifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cms.c_unparse_CMSIdentifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"certificate issued by %s with serial number %s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"certificate with id %s\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"certificate have unknown CMSidentifier type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*, i8**)* @unparse_CMSIdentifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unparse_CMSIdentifier(i32 %0, %struct.TYPE_9__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %15 = load i8**, i8*** %7, align 8
  store i8* null, i8** %15, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %70 [
    i32 129, label %19
    i32 128, label %49
  ]

19:                                               ; preds = %3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %9, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = call i32 @_hx509_Name_to_string(i32* %24, i8** %11)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %80

30:                                               ; preds = %19
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = call i32 @der_print_hex_heim_integer(i32* %32, i8** %10)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %80

40:                                               ; preds = %30
  %41 = load i8**, i8*** %7, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 (i8**, i8*, ...) @asprintf(i8** %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %42, i8* %43)
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @free(i8* %47)
  br label %73

49:                                               ; preds = %3
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %12, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @hex_encode(i32 %55, i32 %58, i8** %13)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load i32, i32* @ENOMEM, align 4
  store i32 %63, i32* %4, align 4
  br label %80

64:                                               ; preds = %49
  %65 = load i8**, i8*** %7, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 (i8**, i8*, ...) @asprintf(i8** %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = load i8*, i8** %13, align 8
  %69 = call i32 @free(i8* %68)
  br label %73

70:                                               ; preds = %3
  %71 = load i8**, i8*** %7, align 8
  %72 = call i32 (i8**, i8*, ...) @asprintf(i8** %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %64, %40
  %74 = load i8**, i8*** %7, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @ENOMEM, align 4
  store i32 %78, i32* %4, align 4
  br label %80

79:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %77, %62, %36, %28
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @_hx509_Name_to_string(i32*, i8**) #1

declare dso_local i32 @der_print_hex_heim_integer(i32*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, ...) #1

declare dso_local i32 @hex_encode(i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
