; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ad.c_kadm5_ad_init_with_password_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ad.c_kadm5_ad_init_with_password_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_12__ = type { i8*, i32*, i32, i32 }

@ENOMEM = common dso_local global i64 0, align 8
@initialize_kadm5_error_table_r = common dso_local global i32 0, align 4
@KADM5_CONFIG_REALM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_ad_init_with_password_ctx(i32 %0, i8* %1, i8* %2, i8* %3, %struct.TYPE_11__* %4, i64 %5, i64 %6, i8** %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i8** %7, i8*** %17, align 8
  %20 = call %struct.TYPE_12__* @malloc(i32 24)
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %19, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %22 = icmp eq %struct.TYPE_12__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %8
  %24 = load i64, i64* @ENOMEM, align 8
  store i64 %24, i64* %9, align 8
  br label %115

25:                                               ; preds = %8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %27 = call i32 @memset(%struct.TYPE_12__* %26, i32 0, i32 24)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %29 = call i32 @set_funcs(%struct.TYPE_12__* %28)
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @initialize_kadm5_error_table_r, align 4
  %35 = call i32 @krb5_add_et_list(i32 %33, i32 %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  %42 = call i64 @krb5_parse_name(i32 %38, i8* %39, i32* %41)
  store i64 %42, i64* %18, align 8
  %43 = load i64, i64* %18, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %25
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %47 = call i32 @free(%struct.TYPE_12__* %46)
  %48 = load i64, i64* %18, align 8
  store i64 %48, i64* %9, align 8
  br label %115

49:                                               ; preds = %25
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @KADM5_CONFIG_REALM, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %49
  store i64 0, i64* %18, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @strdup(i8* %59)
  %61 = bitcast i8* %60 to i32*
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load i64, i64* @ENOMEM, align 8
  store i64 %69, i64* %18, align 8
  br label %70

70:                                               ; preds = %68, %56
  br label %78

71:                                               ; preds = %49
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = call i64 @krb5_get_default_realm(i32 %74, i32** %76)
  store i64 %77, i64* %18, align 8
  br label %78

78:                                               ; preds = %71, %70
  %79 = load i64, i64* %18, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %83 = call i32 @free(%struct.TYPE_12__* %82)
  %84 = load i64, i64* %18, align 8
  store i64 %84, i64* %9, align 8
  br label %115

85:                                               ; preds = %78
  %86 = load i8*, i8** %11, align 8
  %87 = call i8* @strdup(i8* %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load i8*, i8** %12, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = call i64 @ad_get_cred(%struct.TYPE_12__* %98, i8* %99)
  store i64 %100, i64* %18, align 8
  br label %104

101:                                              ; preds = %92, %85
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %103 = call i64 @ad_get_cred(%struct.TYPE_12__* %102, i8* null)
  store i64 %103, i64* %18, align 8
  br label %104

104:                                              ; preds = %101, %97
  %105 = load i64, i64* %18, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %109 = call i32 @kadm5_ad_destroy(%struct.TYPE_12__* %108)
  %110 = load i64, i64* %18, align 8
  store i64 %110, i64* %9, align 8
  br label %115

111:                                              ; preds = %104
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %113 = bitcast %struct.TYPE_12__* %112 to i8*
  %114 = load i8**, i8*** %17, align 8
  store i8* %113, i8** %114, align 8
  store i64 0, i64* %9, align 8
  br label %115

115:                                              ; preds = %111, %107, %81, %45, %23
  %116 = load i64, i64* %9, align 8
  ret i64 %116
}

declare dso_local %struct.TYPE_12__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @set_funcs(%struct.TYPE_12__*) #1

declare dso_local i32 @krb5_add_et_list(i32, i32) #1

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @krb5_get_default_realm(i32, i32**) #1

declare dso_local i64 @ad_get_cred(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @kadm5_ad_destroy(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
