; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_remove.c_kt_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_remove.c_kt_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remove_options = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"You must give at least one of principal, enctype or kvno.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"remove\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kt_remove(%struct.remove_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.remove_options*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.remove_options* %0, %struct.remove_options** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.remove_options*, %struct.remove_options** %5, align 8
  %15 = getelementptr inbounds %struct.remove_options, %struct.remove_options* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %3
  %19 = load i32, i32* @context, align 4
  %20 = load %struct.remove_options*, %struct.remove_options** %5, align 8
  %21 = getelementptr inbounds %struct.remove_options, %struct.remove_options* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @krb5_parse_name(i32 %19, i32 %22, i32** %11)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load i32, i32* @context, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.remove_options*, %struct.remove_options** %5, align 8
  %30 = getelementptr inbounds %struct.remove_options, %struct.remove_options* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i32, i8*, ...) @krb5_warn(i32 %27, i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 1, i32* %4, align 4
  br label %124

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.remove_options*, %struct.remove_options** %5, align 8
  %36 = getelementptr inbounds %struct.remove_options, %struct.remove_options* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %34
  %40 = load i32, i32* @context, align 4
  %41 = load %struct.remove_options*, %struct.remove_options** %5, align 8
  %42 = getelementptr inbounds %struct.remove_options, %struct.remove_options* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @krb5_string_to_enctype(i32 %40, i32 %43, i32* %12)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %39
  %48 = load %struct.remove_options*, %struct.remove_options** %5, align 8
  %49 = getelementptr inbounds %struct.remove_options, %struct.remove_options* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sscanf(i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %12, align 4
  br label %69

55:                                               ; preds = %47
  %56 = load i32, i32* @context, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.remove_options*, %struct.remove_options** %5, align 8
  %59 = getelementptr inbounds %struct.remove_options, %struct.remove_options* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i32, i8*, ...) @krb5_warn(i32 %56, i32 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %11, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i32, i32* @context, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @krb5_free_principal(i32 %65, i32* %66)
  br label %68

68:                                               ; preds = %64, %55
  store i32 1, i32* %4, align 4
  br label %124

69:                                               ; preds = %53
  br label %70

70:                                               ; preds = %69, %39
  br label %71

71:                                               ; preds = %70, %34
  %72 = load i32*, i32** %11, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %86, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %74
  %78 = load %struct.remove_options*, %struct.remove_options** %5, align 8
  %79 = getelementptr inbounds %struct.remove_options, %struct.remove_options* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @context, align 4
  %84 = call i32 @krb5_warnx(i32 %83, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  store i32 %85, i32* %8, align 4
  br label %113

86:                                               ; preds = %77, %74, %71
  %87 = call i32* (...) @ktutil_open_keytab()
  store i32* %87, i32** %10, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 1, i32* %8, align 4
  br label %113

90:                                               ; preds = %86
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i32* %91, i32** %92, align 8
  %93 = load i32, i32* %12, align 4
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.remove_options*, %struct.remove_options** %5, align 8
  %97 = getelementptr inbounds %struct.remove_options, %struct.remove_options* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 %98, i32* %99, align 8
  %100 = load i32, i32* @context, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @krb5_kt_remove_entry(i32 %100, i32* %101, %struct.TYPE_5__* %9)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* @context, align 4
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @krb5_kt_close(i32 %103, i32* %104)
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %90
  %109 = load i32, i32* @context, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (i32, i32, i8*, ...) @krb5_warn(i32 %109, i32 %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %112

112:                                              ; preds = %108, %90
  br label %113

113:                                              ; preds = %112, %89, %82
  %114 = load i32*, i32** %11, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, i32* @context, align 4
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 @krb5_free_principal(i32 %117, i32* %118)
  br label %120

120:                                              ; preds = %116, %113
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %120, %68, %26
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @krb5_parse_name(i32, i32, i32**) #1

declare dso_local i32 @krb5_warn(i32, i32, i8*, ...) #1

declare dso_local i32 @krb5_string_to_enctype(i32, i32, i32*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, i32*) #1

declare dso_local i32 @krb5_warnx(i32, i8*) #1

declare dso_local i32* @ktutil_open_keytab(...) #1

declare dso_local i32 @krb5_kt_remove_entry(i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @krb5_kt_close(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
