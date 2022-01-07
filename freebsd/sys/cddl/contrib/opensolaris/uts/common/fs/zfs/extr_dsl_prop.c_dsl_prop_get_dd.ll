; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_prop.c_dsl_prop_get_dd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_prop.c_dsl_prop_get_dd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZPROP_INVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@ZPROP_INHERIT_SUFFIX = common dso_local global i32 0, align 4
@ZPROP_RECVD_SUFFIX = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZPROP_SOURCE_VAL_RECVD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_prop_get_dd(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %23 = load i32, i32* @ENOENT, align 4
  store i32 %23, i32* %15, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %16, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %17, align 8
  %30 = load i32, i32* @B_FALSE, align 4
  store i32 %30, i32* %20, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = call i32 @dsl_pool_config_held(%struct.TYPE_8__* %33)
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load i8*, i8** %13, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %7
  %39 = load i8*, i8** %13, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %38, %7
  %42 = load i8*, i8** %9, align 8
  %43 = call i64 @zfs_name_to_prop(i8* %42)
  store i64 %43, i64* %18, align 8
  %44 = load i64, i64* %18, align 8
  %45 = load i64, i64* @ZPROP_INVAL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load i64, i64* %18, align 8
  %49 = call i64 @zfs_prop_inheritable(i64 %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %47, %41
  %52 = phi i1 [ true, %41 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %19, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* @ZPROP_INHERIT_SUFFIX, align 4
  %56 = call i8* @kmem_asprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %54, i32 %55)
  store i8* %56, i8** %21, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* @ZPROP_RECVD_SUFFIX, align 4
  %59 = call i8* @kmem_asprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %57, i32 %58)
  store i8* %59, i8** %22, align 8
  br label %60

60:                                               ; preds = %157, %51
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = icmp ne %struct.TYPE_7__* %61, null
  br i1 %62, label %63, label %161

63:                                               ; preds = %60
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %66 = icmp ne %struct.TYPE_7__* %64, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67, %63
  %71 = load i32, i32* %19, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  br label %161

74:                                               ; preds = %70
  %75 = load i32, i32* @B_TRUE, align 4
  store i32 %75, i32* %20, align 4
  br label %76

76:                                               ; preds = %74, %67
  %77 = load i32*, i32** %17, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = call %struct.TYPE_9__* @dsl_dir_phys(%struct.TYPE_7__* %78)
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i8*, i8** %12, align 8
  %86 = call i32 @zap_lookup(i32* %77, i32 %81, i8* %82, i32 %83, i32 %84, i8* %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* @ENOENT, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %76
  %91 = load i8*, i8** %13, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i32, i32* %15, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = call i32 @dsl_dir_name(%struct.TYPE_7__* %97, i8* %98)
  br label %100

100:                                              ; preds = %96, %93, %90
  br label %161

101:                                              ; preds = %76
  %102 = load i32*, i32** %17, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %104 = call %struct.TYPE_9__* @dsl_dir_phys(%struct.TYPE_7__* %103)
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %21, align 8
  %108 = call i32 @zap_contains(i32* %102, i32 %106, i8* %107)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %101
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* @ENOENT, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %161

116:                                              ; preds = %111, %101
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @ENOENT, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %154

120:                                              ; preds = %116
  %121 = load i32*, i32** %17, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %123 = call %struct.TYPE_9__* @dsl_dir_phys(%struct.TYPE_7__* %122)
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i8*, i8** %22, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load i8*, i8** %12, align 8
  %130 = call i32 @zap_lookup(i32* %121, i32 %125, i8* %126, i32 %127, i32 %128, i8* %129)
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @ENOENT, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %153

134:                                              ; preds = %120
  %135 = load i8*, i8** %13, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %152

137:                                              ; preds = %134
  %138 = load i32, i32* %15, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %137
  %141 = load i32, i32* %20, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %145 = load i8*, i8** %13, align 8
  %146 = call i32 @dsl_dir_name(%struct.TYPE_7__* %144, i8* %145)
  br label %151

147:                                              ; preds = %140
  %148 = load i8*, i8** %13, align 8
  %149 = load i32, i32* @ZPROP_SOURCE_VAL_RECVD, align 4
  %150 = call i32 @strcpy(i8* %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %143
  br label %152

152:                                              ; preds = %151, %137, %134
  br label %161

153:                                              ; preds = %120
  br label %154

154:                                              ; preds = %153, %116
  %155 = load i32, i32* @ENOENT, align 4
  %156 = call i32 @SET_ERROR(i32 %155)
  store i32 %156, i32* %15, align 4
  br label %157

157:                                              ; preds = %154
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  store %struct.TYPE_7__* %160, %struct.TYPE_7__** %8, align 8
  br label %60

161:                                              ; preds = %152, %115, %100, %73, %60
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* @ENOENT, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %161
  %166 = load i64, i64* %18, align 8
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load i8*, i8** %12, align 8
  %170 = call i32 @dodefault(i64 %166, i32 %167, i32 %168, i8* %169)
  store i32 %170, i32* %15, align 4
  br label %171

171:                                              ; preds = %165, %161
  %172 = load i8*, i8** %21, align 8
  %173 = call i32 @strfree(i8* %172)
  %174 = load i8*, i8** %22, align 8
  %175 = call i32 @strfree(i8* %174)
  %176 = load i32, i32* %15, align 4
  ret i32 %176
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(%struct.TYPE_8__*) #1

declare dso_local i64 @zfs_name_to_prop(i8*) #1

declare dso_local i64 @zfs_prop_inheritable(i64) #1

declare dso_local i8* @kmem_asprintf(i8*, i8*, i32) #1

declare dso_local i32 @zap_lookup(i32*, i32, i8*, i32, i32, i8*) #1

declare dso_local %struct.TYPE_9__* @dsl_dir_phys(%struct.TYPE_7__*) #1

declare dso_local i32 @dsl_dir_name(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @zap_contains(i32*, i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dodefault(i64, i32, i32, i8*) #1

declare dso_local i32 @strfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
