; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_prop.c_dsl_prop_get_ds.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_prop.c_dsl_prop_get_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i64 }

@ZPROP_INVAL = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@ZPROP_INHERIT_SUFFIX = common dso_local global i32 0, align 4
@ZPROP_RECVD_SUFFIX = common dso_local global i32 0, align 4
@ZPROP_SOURCE_VAL_RECVD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_prop_get_ds(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i64 @zfs_name_to_prop(i8* %21)
  store i64 %22, i64* %14, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = call i32 @dsl_pool_config_held(%struct.TYPE_10__* %27)
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* @ZPROP_INVAL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %6
  %34 = load i64, i64* %14, align 8
  %35 = call i64 @zfs_prop_inheritable(i64 %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %33, %6
  %38 = phi i1 [ true, %6 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %15, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = call %struct.TYPE_11__* @dsl_dataset_phys(%struct.TYPE_8__* %40)
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %16, align 8
  %44 = load i64, i64* %16, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %136

46:                                               ; preds = %37
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %17, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ASSERT(i32 %56)
  %58 = load i32*, i32** %17, align 8
  %59 = load i64, i64* %16, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @zap_lookup(i32* %58, i64 %59, i8* %60, i32 %61, i32 %62, i8* %63)
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* @ENOENT, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %46
  %69 = load i8*, i8** %13, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %18, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @dsl_dataset_name(%struct.TYPE_8__* %75, i8* %76)
  br label %78

78:                                               ; preds = %74, %71, %68
  %79 = load i32, i32* %18, align 4
  store i32 %79, i32* %7, align 4
  br label %149

80:                                               ; preds = %46
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* @ZPROP_INHERIT_SUFFIX, align 4
  %86 = call i8* @kmem_asprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %84, i32 %85)
  store i8* %86, i8** %19, align 8
  %87 = load i32*, i32** %17, align 8
  %88 = load i64, i64* %16, align 8
  %89 = load i8*, i8** %19, align 8
  %90 = call i32 @zap_contains(i32* %87, i64 %88, i8* %89)
  store i32 %90, i32* %18, align 4
  %91 = load i8*, i8** %19, align 8
  %92 = call i32 @strfree(i8* %91)
  %93 = load i32, i32* %18, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %83
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* @ENOENT, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* %18, align 4
  store i32 %100, i32* %7, align 4
  br label %149

101:                                              ; preds = %95, %83
  br label %102

102:                                              ; preds = %101, %80
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* @ENOENT, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %135

106:                                              ; preds = %102
  %107 = load i8*, i8** %9, align 8
  %108 = load i32, i32* @ZPROP_RECVD_SUFFIX, align 4
  %109 = call i8* @kmem_asprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %107, i32 %108)
  store i8* %109, i8** %20, align 8
  %110 = load i32*, i32** %17, align 8
  %111 = load i64, i64* %16, align 8
  %112 = load i8*, i8** %20, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i8*, i8** %12, align 8
  %116 = call i32 @zap_lookup(i32* %110, i64 %111, i8* %112, i32 %113, i32 %114, i8* %115)
  store i32 %116, i32* %18, align 4
  %117 = load i8*, i8** %20, align 8
  %118 = call i32 @strfree(i8* %117)
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* @ENOENT, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %106
  %123 = load i8*, i8** %13, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i32, i32* %18, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i8*, i8** %13, align 8
  %130 = load i32, i32* @ZPROP_SOURCE_VAL_RECVD, align 4
  %131 = call i32 @strcpy(i8* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %125, %122
  %133 = load i32, i32* %18, align 4
  store i32 %133, i32* %7, align 4
  br label %149

134:                                              ; preds = %106
  br label %135

135:                                              ; preds = %134, %102
  br label %136

136:                                              ; preds = %135, %37
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i8*, i8** %12, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @dsl_prop_get_dd(%struct.TYPE_9__* %139, i8* %140, i32 %141, i32 %142, i8* %143, i8* %144, i32 %147)
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %136, %132, %99, %78
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i64 @zfs_name_to_prop(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(%struct.TYPE_10__*) #1

declare dso_local i64 @zfs_prop_inheritable(i64) #1

declare dso_local %struct.TYPE_11__* @dsl_dataset_phys(%struct.TYPE_8__*) #1

declare dso_local i32 @zap_lookup(i32*, i64, i8*, i32, i32, i8*) #1

declare dso_local i32 @dsl_dataset_name(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @kmem_asprintf(i8*, i8*, i32) #1

declare dso_local i32 @zap_contains(i32*, i64, i8*) #1

declare dso_local i32 @strfree(i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @dsl_prop_get_dd(%struct.TYPE_9__*, i8*, i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
