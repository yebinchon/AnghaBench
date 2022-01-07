; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_dir_hold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_dir_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"looking up %s in obj%lld\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"next=%p (%s) tail=%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dir_hold(%struct.TYPE_6__* %0, i8* %1, i8* %2, i32** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %22 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  store i8* null, i8** %16, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @getcomponent(i8* %26, i8* %25, i8** %15)
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %17, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* %17, align 4
  store i32 %31, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %168

32:                                               ; preds = %5
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @spa_name(i32 %35)
  store i8* %36, i8** %14, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = call i64 @strcmp(i8* %25, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EXDEV, align 4
  %42 = call i32 @SET_ERROR(i32 %41)
  store i32 %42, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %168

43:                                               ; preds = %32
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = call i32 @dsl_pool_config_held(%struct.TYPE_6__* %44)
  %46 = call i32 @ASSERT(i32 %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @dsl_dir_hold_obj(%struct.TYPE_6__* %47, i32 %50, i8* null, i8* %51, i32** %18)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* %17, align 4
  store i32 %56, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %168

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %113, %57
  %59 = load i8*, i8** %15, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %119

61:                                               ; preds = %58
  %62 = load i8*, i8** %15, align 8
  %63 = call i32 @getcomponent(i8* %62, i8* %25, i8** %16)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %119

67:                                               ; preds = %61
  %68 = load i8*, i8** %15, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @ASSERT(i32 %73)
  %75 = load i8*, i8** %15, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 64
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %119

81:                                               ; preds = %67
  %82 = load i32*, i32** %18, align 8
  %83 = call %struct.TYPE_7__* @dsl_dir_phys(i32* %82)
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 (i8*, i8*, i8*, ...) @dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %87)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %18, align 8
  %93 = call %struct.TYPE_7__* @dsl_dir_phys(i32* %92)
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @zap_lookup(i32 %91, i32 %95, i8* %25, i32 4, i32 1, i32* %19)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %81
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* @ENOENT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 0, i32* %17, align 4
  br label %104

104:                                              ; preds = %103, %99
  br label %119

105:                                              ; preds = %81
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %107 = load i32, i32* %19, align 4
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @dsl_dir_hold_obj(%struct.TYPE_6__* %106, i32 %107, i8* %25, i8* %108, i32** %21)
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %17, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %119

113:                                              ; preds = %105
  %114 = load i32*, i32** %18, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = call i32 @dsl_dir_rele(i32* %114, i8* %115)
  %117 = load i32*, i32** %21, align 8
  store i32* %117, i32** %18, align 8
  %118 = load i8*, i8** %16, align 8
  store i8* %118, i8** %15, align 8
  br label %58

119:                                              ; preds = %112, %104, %80, %66, %58
  %120 = load i32, i32* %17, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i32*, i32** %18, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = call i32 @dsl_dir_rele(i32* %123, i8* %124)
  %126 = load i32, i32* %17, align 4
  store i32 %126, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %168

127:                                              ; preds = %119
  %128 = load i8*, i8** %15, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %158

130:                                              ; preds = %127
  %131 = load i8**, i8*** %11, align 8
  %132 = icmp eq i8** %131, null
  br i1 %132, label %142, label %133

133:                                              ; preds = %130
  %134 = load i8*, i8** %16, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %158

136:                                              ; preds = %133
  %137 = load i8*, i8** %16, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %136, %130
  %143 = load i32*, i32** %18, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = call i32 @dsl_dir_rele(i32* %143, i8* %144)
  %146 = load i8*, i8** %15, align 8
  %147 = load i8*, i8** %15, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i8*, i8** %15, align 8
  br label %152

151:                                              ; preds = %142
  br label %152

152:                                              ; preds = %151, %149
  %153 = phi i8* [ %150, %149 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %151 ]
  %154 = load i8**, i8*** %11, align 8
  %155 = call i32 (i8*, i8*, i8*, ...) @dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %146, i8* %153, i8** %154)
  %156 = load i32, i32* @ENOENT, align 4
  %157 = call i32 @SET_ERROR(i32 %156)
  store i32 %157, i32* %17, align 4
  br label %158

158:                                              ; preds = %152, %136, %133, %127
  %159 = load i8**, i8*** %11, align 8
  %160 = icmp ne i8** %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i8*, i8** %15, align 8
  %163 = load i8**, i8*** %11, align 8
  store i8* %162, i8** %163, align 8
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i32*, i32** %18, align 8
  %166 = load i32**, i32*** %10, align 8
  store i32* %165, i32** %166, align 8
  %167 = load i32, i32* %17, align 4
  store i32 %167, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %168

168:                                              ; preds = %164, %122, %55, %40, %30
  %169 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %169)
  %170 = load i32, i32* %6, align 4
  ret i32 %170
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getcomponent(i8*, i8*, i8**) #2

declare dso_local i8* @spa_name(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @SET_ERROR(i32) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @dsl_pool_config_held(%struct.TYPE_6__*) #2

declare dso_local i32 @dsl_dir_hold_obj(%struct.TYPE_6__*, i32, i8*, i8*, i32**) #2

declare dso_local i32 @dprintf(i8*, i8*, i8*, ...) #2

declare dso_local %struct.TYPE_7__* @dsl_dir_phys(i32*) #2

declare dso_local i32 @zap_lookup(i32, i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @dsl_dir_rele(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
