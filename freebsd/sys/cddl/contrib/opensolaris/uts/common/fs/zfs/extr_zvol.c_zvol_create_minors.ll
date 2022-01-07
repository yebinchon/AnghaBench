; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_create_minors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_create_minors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"ZFS WARNING: Unable to put hold on %s (error=%d).\0A\00", align 1
@DMU_OST_ZVOL = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"ZFS WARNING: Unable to create ZVOL %s (error=%d).\0A\00", align 1
@DMU_OST_ZFS = common dso_local global i64 0, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zvol_create_minors(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @dataset_name_hidden(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %146

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @FTAG, align 4
  %17 = call i32 @dmu_objset_hold(i8* %15, i32 %16, %struct.TYPE_8__** %5)
  store i32 %17, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %2, align 4
  br label %146

24:                                               ; preds = %14
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = call i64 @dmu_objset_type(%struct.TYPE_8__* %25)
  %27 = load i64, i64* @DMU_OST_ZVOL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FTAG, align 4
  %34 = call i32 @dsl_dataset_long_hold(i32 %32, i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = call i32 @dmu_objset_pool(%struct.TYPE_8__* %35)
  %37 = load i32, i32* @FTAG, align 4
  %38 = call i32 @dsl_pool_rele(i32 %36, i32 %37)
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @zvol_create_minor(i8* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %29
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @EEXIST, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43, %29
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @zvol_create_snapshots(%struct.TYPE_8__* %48, i8* %49)
  store i32 %50, i32* %8, align 4
  br label %55

51:                                               ; preds = %43
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @FTAG, align 4
  %60 = call i32 @dsl_dataset_long_rele(i32 %58, i32 %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FTAG, align 4
  %65 = call i32 @dsl_dataset_rele(i32 %63, i32 %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %146

67:                                               ; preds = %24
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = call i64 @dmu_objset_type(%struct.TYPE_8__* %68)
  %70 = load i64, i64* @DMU_OST_ZFS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = load i32, i32* @FTAG, align 4
  %75 = call i32 @dmu_objset_rele(%struct.TYPE_8__* %73, i32 %74)
  store i32 0, i32* %2, align 4
  br label %146

76:                                               ; preds = %67
  %77 = load i32, i32* @MAXPATHLEN, align 4
  %78 = load i32, i32* @KM_SLEEP, align 4
  %79 = call i8* @kmem_alloc(i32 %77, i32 %78)
  store i8* %79, i8** %6, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* @MAXPATHLEN, align 4
  %82 = load i8*, i8** %3, align 8
  %83 = call i32 @snprintf(i8* %80, i32 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  %84 = load i32, i32* @MAXPATHLEN, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %76
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = load i32, i32* @FTAG, align 4
  %89 = call i32 @dmu_objset_rele(%struct.TYPE_8__* %87, i32 %88)
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* @MAXPATHLEN, align 4
  %92 = call i32 @kmem_free(i8* %90, i32 %91)
  %93 = load i32, i32* @ENOENT, align 4
  store i32 %93, i32* %2, align 4
  br label %146

94:                                               ; preds = %76
  %95 = load i8*, i8** %6, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  store i8* %99, i8** %7, align 8
  %100 = load i32, i32* @MAXPATHLEN, align 4
  %101 = sext i32 %100 to i64
  %102 = load i8*, i8** %7, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = sub nsw i64 %101, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %9, align 4
  store i64 0, i64* %4, align 8
  br label %109

109:                                              ; preds = %138, %94
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = load i32, i32* @MAXPATHLEN, align 4
  %112 = sext i32 %111 to i64
  %113 = load i8*, i8** %7, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = sub nsw i64 %112, %117
  %119 = trunc i64 %118 to i32
  %120 = load i8*, i8** %7, align 8
  %121 = call i64 @dmu_dir_list_next(%struct.TYPE_8__* %110, i32 %119, i8* %120, i32* null, i64* %4)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %109
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = load i32, i32* @FTAG, align 4
  %126 = call i32 @dmu_objset_rele(%struct.TYPE_8__* %124, i32 %125)
  %127 = load i8*, i8** %6, align 8
  %128 = call i32 @zvol_create_minors(i8* %127)
  %129 = load i8*, i8** %3, align 8
  %130 = load i32, i32* @FTAG, align 4
  %131 = call i32 @dmu_objset_hold(i8* %129, i32 %130, %struct.TYPE_8__** %5)
  store i32 %131, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %123
  %134 = load i8*, i8** %3, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %134, i32 %135)
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %2, align 4
  br label %146

138:                                              ; preds = %123
  br label %109

139:                                              ; preds = %109
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = load i32, i32* @FTAG, align 4
  %142 = call i32 @dmu_objset_rele(%struct.TYPE_8__* %140, i32 %141)
  %143 = load i8*, i8** %6, align 8
  %144 = load i32, i32* @MAXPATHLEN, align 4
  %145 = call i32 @kmem_free(i8* %143, i32 %144)
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %139, %133, %86, %72, %55, %19, %13
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i64 @dataset_name_hidden(i8*) #1

declare dso_local i32 @dmu_objset_hold(i8*, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i64 @dmu_objset_type(%struct.TYPE_8__*) #1

declare dso_local i32 @dsl_dataset_long_hold(i32, i32) #1

declare dso_local i32 @dsl_pool_rele(i32, i32) #1

declare dso_local i32 @dmu_objset_pool(%struct.TYPE_8__*) #1

declare dso_local i32 @zvol_create_minor(i8*) #1

declare dso_local i32 @zvol_create_snapshots(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @dsl_dataset_long_rele(i32, i32) #1

declare dso_local i32 @dsl_dataset_rele(i32, i32) #1

declare dso_local i32 @dmu_objset_rele(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @dmu_dir_list_next(%struct.TYPE_8__*, i32, i8*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
