; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_calc_mask.c_acl_calc_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_calc_mask.c_acl_calc_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.acl }
%struct.acl = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ACL_BRAND_POSIX = common dso_local global i32 0, align 4
@ACL_MAX_ENTRIES = common dso_local global i32 0, align 4
@ACL_PERM_BITS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACL_UNDEFINED_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_calc_mask(%struct.TYPE_11__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__**, align 8
  %4 = alloca %struct.acl*, align 8
  %5 = alloca %struct.acl*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %3, align 8
  %10 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %11 = icmp eq %struct.TYPE_11__** %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = icmp eq %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %1
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %162

18:                                               ; preds = %12
  %19 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = load i32, i32* @ACL_BRAND_POSIX, align 4
  %22 = call i32 @_acl_brand_may_be(%struct.TYPE_11__* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %162

26:                                               ; preds = %18
  %27 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = load i32, i32* @ACL_BRAND_POSIX, align 4
  %30 = call i32 @_acl_brand_as(%struct.TYPE_11__* %28, i32 %29)
  %31 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store %struct.acl* %33, %struct.acl** %4, align 8
  %34 = load %struct.acl*, %struct.acl** %4, align 8
  %35 = getelementptr inbounds %struct.acl, %struct.acl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %44, label %38

38:                                               ; preds = %26
  %39 = load %struct.acl*, %struct.acl** %4, align 8
  %40 = getelementptr inbounds %struct.acl, %struct.acl* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38, %26
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %162

46:                                               ; preds = %38
  %47 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = call %struct.TYPE_11__* @acl_dup(%struct.TYPE_11__* %48)
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %6, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = icmp eq %struct.TYPE_11__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 -1, i32* %2, align 4
  br label %162

53:                                               ; preds = %46
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store %struct.acl* %55, %struct.acl** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %87, %53
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.acl*, %struct.acl** %5, align 8
  %59 = getelementptr inbounds %struct.acl, %struct.acl* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %90

62:                                               ; preds = %56
  %63 = load %struct.acl*, %struct.acl** %5, align 8
  %64 = getelementptr inbounds %struct.acl, %struct.acl* %63, i32 0, i32 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %86 [
    i32 128, label %71
    i32 131, label %71
    i32 130, label %71
    i32 129, label %84
  ]

71:                                               ; preds = %62, %62, %62
  %72 = load %struct.acl*, %struct.acl** %5, align 8
  %73 = getelementptr inbounds %struct.acl, %struct.acl* %72, i32 0, i32 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ACL_PERM_BITS, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %86

84:                                               ; preds = %62
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %62, %84, %71
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %56

90:                                               ; preds = %56
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.acl*, %struct.acl** %5, align 8
  %96 = getelementptr inbounds %struct.acl, %struct.acl* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  store i32 %94, i32* %101, align 4
  br label %146

102:                                              ; preds = %90
  %103 = load %struct.acl*, %struct.acl** %5, align 8
  %104 = getelementptr inbounds %struct.acl, %struct.acl* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i32, i32* @ENOMEM, align 4
  store i32 %109, i32* @errno, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = call i32 @acl_free(%struct.TYPE_11__* %110)
  store i32 -1, i32* %2, align 4
  br label %162

112:                                              ; preds = %102
  %113 = load %struct.acl*, %struct.acl** %5, align 8
  %114 = getelementptr inbounds %struct.acl, %struct.acl* %113, i32 0, i32 1
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = load %struct.acl*, %struct.acl** %5, align 8
  %117 = getelementptr inbounds %struct.acl, %struct.acl* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  store i32 129, i32* %121, align 4
  %122 = load i32, i32* @ACL_UNDEFINED_ID, align 4
  %123 = load %struct.acl*, %struct.acl** %5, align 8
  %124 = getelementptr inbounds %struct.acl, %struct.acl* %123, i32 0, i32 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = load %struct.acl*, %struct.acl** %5, align 8
  %127 = getelementptr inbounds %struct.acl, %struct.acl* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  store i32 %122, i32* %131, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.acl*, %struct.acl** %5, align 8
  %134 = getelementptr inbounds %struct.acl, %struct.acl* %133, i32 0, i32 1
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = load %struct.acl*, %struct.acl** %5, align 8
  %137 = getelementptr inbounds %struct.acl, %struct.acl* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  store i32 %132, i32* %141, align 4
  %142 = load %struct.acl*, %struct.acl** %5, align 8
  %143 = getelementptr inbounds %struct.acl, %struct.acl* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %112, %93
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %148 = call i32 @acl_valid(%struct.TYPE_11__* %147)
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i32, i32* @EINVAL, align 4
  store i32 %151, i32* @errno, align 4
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %153 = call i32 @acl_free(%struct.TYPE_11__* %152)
  store i32 -1, i32* %2, align 4
  br label %162

154:                                              ; preds = %146
  %155 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %158 = bitcast %struct.TYPE_11__* %156 to i8*
  %159 = bitcast %struct.TYPE_11__* %157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 8 %159, i64 16, i1 false)
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %161 = call i32 @acl_free(%struct.TYPE_11__* %160)
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %154, %150, %108, %52, %44, %24, %16
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @_acl_brand_may_be(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @_acl_brand_as(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_11__* @acl_dup(%struct.TYPE_11__*) #1

declare dso_local i32 @acl_free(%struct.TYPE_11__*) #1

declare dso_local i32 @acl_valid(%struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
