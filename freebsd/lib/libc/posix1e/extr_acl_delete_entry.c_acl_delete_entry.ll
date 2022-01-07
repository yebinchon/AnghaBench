; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_delete_entry.c_acl_delete_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_delete_entry.c_acl_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.acl }
%struct.acl = type { i32, i32* }
%struct.acl_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ACL_MAX_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_delete_entry(%struct.TYPE_4__* %0, %struct.acl_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.acl_entry*, align 8
  %6 = alloca %struct.acl*, align 8
  %7 = alloca %struct.acl_entry, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.acl_entry* %1, %struct.acl_entry** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %15 = icmp eq %struct.acl_entry* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %120

18:                                               ; preds = %13
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store %struct.acl* %20, %struct.acl** %6, align 8
  %21 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %22 = call i64 @_entry_brand(%struct.acl_entry* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = call i64 @_acl_brand(%struct.TYPE_4__* %23)
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %120

28:                                               ; preds = %18
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.acl, %struct.acl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.acl, %struct.acl* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34, %28
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %120

43:                                               ; preds = %34
  %44 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %45 = bitcast %struct.acl_entry* %7 to i8*
  %46 = bitcast %struct.acl_entry* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %113, %43
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.acl, %struct.acl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %54, label %114

54:                                               ; preds = %47
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.acl, %struct.acl* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = call i64 @_entry_matches(i32* %61, %struct.acl_entry* %7)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %110

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %91, %64
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.acl, %struct.acl* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  %73 = icmp slt i32 %67, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %66
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.acl, %struct.acl* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.acl, %struct.acl* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %83, i32* %90, align 4
  br label %91

91:                                               ; preds = %74
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %66

94:                                               ; preds = %66
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.acl, %struct.acl* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %97, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.acl, %struct.acl* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = call i32 @bzero(i32* %106, i32 4)
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  store i32 1, i32* %10, align 4
  br label %113

110:                                              ; preds = %54
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %110, %94
  br label %47

114:                                              ; preds = %47
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %120

118:                                              ; preds = %114
  %119 = load i32, i32* @EINVAL, align 4
  store i32 %119, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %117, %41, %26, %16
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @_entry_brand(%struct.acl_entry*) #1

declare dso_local i64 @_acl_brand(%struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @_entry_matches(i32*, %struct.acl_entry*) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
