; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libufs/extr_inode.c_getinode.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libufs/extr_inode.c_getinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uufsd = type { i64, i64, i32, %union.dinodep, i32*, %struct.fs }
%union.dinodep = type { %struct.ufs2_dinode* }
%struct.ufs2_dinode = type { i32 }
%struct.fs = type { i64, i32, i64 }
%struct.ufs1_dinode = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"inode number out of range\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to allocate inode block\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"check-hash failed for inode read from disk\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"unknown UFS filesystem type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getinode(%struct.uufsd* %0, %union.dinodep* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uufsd*, align 8
  %6 = alloca %union.dinodep*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.fs*, align 8
  store %struct.uufsd* %0, %struct.uufsd** %5, align 8
  store %union.dinodep* %1, %union.dinodep** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %13 = call i32 @ERROR(%struct.uufsd* %12, i8* null)
  %14 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %15 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %14, i32 0, i32 5
  store %struct.fs* %15, %struct.fs** %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.fs*, %struct.fs** %11, align 8
  %18 = getelementptr inbounds %struct.fs, %struct.fs* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fs*, %struct.fs** %11, align 8
  %21 = getelementptr inbounds %struct.fs, %struct.fs* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = mul i64 %19, %22
  %24 = icmp uge i64 %16, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %27 = call i32 @ERROR(%struct.uufsd* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %146

28:                                               ; preds = %3
  %29 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %30 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %10, align 8
  %32 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %33 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %8, align 8
  %35 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %36 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %28
  %41 = load %struct.fs*, %struct.fs** %11, align 8
  %42 = getelementptr inbounds %struct.fs, %struct.fs* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32* @malloc(i32 %43)
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %49 = call i32 @ERROR(%struct.uufsd* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %146

50:                                               ; preds = %40
  %51 = load i32*, i32** %10, align 8
  %52 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %53 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %52, i32 0, i32 4
  store i32* %51, i32** %53, align 8
  br label %54

54:                                               ; preds = %50, %28
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp uge i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %89

63:                                               ; preds = %58, %54
  %64 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %65 = load %struct.fs*, %struct.fs** %11, align 8
  %66 = load %struct.fs*, %struct.fs** %11, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @ino_to_fsba(%struct.fs* %66, i64 %67)
  %69 = call i32 @fsbtodb(%struct.fs* %65, i32 %68)
  %70 = load i32*, i32** %10, align 8
  %71 = load %struct.fs*, %struct.fs** %11, align 8
  %72 = getelementptr inbounds %struct.fs, %struct.fs* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @bread(%struct.uufsd* %64, i32 %69, i32* %70, i32 %73)
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.fs*, %struct.fs** %11, align 8
  %78 = call i64 @INOPB(%struct.fs* %77)
  %79 = urem i64 %76, %78
  %80 = sub i64 %75, %79
  store i64 %80, i64* %8, align 8
  %81 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %82 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load %struct.fs*, %struct.fs** %11, align 8
  %85 = call i64 @INOPB(%struct.fs* %84)
  %86 = add i64 %83, %85
  store i64 %86, i64* %9, align 8
  %87 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %88 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %63, %62
  %90 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %91 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %142 [
    i32 1, label %93
    i32 2, label %112
  ]

93:                                               ; preds = %89
  %94 = load i32*, i32** %10, align 8
  %95 = bitcast i32* %94 to %struct.ufs1_dinode*
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = sub i64 %96, %97
  %99 = getelementptr inbounds %struct.ufs1_dinode, %struct.ufs1_dinode* %95, i64 %98
  %100 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %101 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %100, i32 0, i32 3
  %102 = bitcast %union.dinodep* %101 to %struct.ufs1_dinode**
  store %struct.ufs1_dinode* %99, %struct.ufs1_dinode** %102, align 8
  %103 = load %union.dinodep*, %union.dinodep** %6, align 8
  %104 = icmp ne %union.dinodep* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %93
  %106 = load %union.dinodep*, %union.dinodep** %6, align 8
  %107 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %108 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %107, i32 0, i32 3
  %109 = bitcast %union.dinodep* %106 to i8*
  %110 = bitcast %union.dinodep* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 8, i1 false)
  br label %111

111:                                              ; preds = %105, %93
  store i32 0, i32* %4, align 4
  br label %146

112:                                              ; preds = %89
  %113 = load i32*, i32** %10, align 8
  %114 = bitcast i32* %113 to %struct.ufs2_dinode*
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* %8, align 8
  %117 = sub i64 %115, %116
  %118 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %114, i64 %117
  %119 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %120 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %119, i32 0, i32 3
  %121 = bitcast %union.dinodep* %120 to %struct.ufs2_dinode**
  store %struct.ufs2_dinode* %118, %struct.ufs2_dinode** %121, align 8
  %122 = load %union.dinodep*, %union.dinodep** %6, align 8
  %123 = icmp ne %union.dinodep* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %112
  %125 = load %union.dinodep*, %union.dinodep** %6, align 8
  %126 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %127 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %126, i32 0, i32 3
  %128 = bitcast %union.dinodep* %125 to i8*
  %129 = bitcast %union.dinodep* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %129, i64 8, i1 false)
  br label %130

130:                                              ; preds = %124, %112
  %131 = load %struct.fs*, %struct.fs** %11, align 8
  %132 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %133 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %132, i32 0, i32 3
  %134 = bitcast %union.dinodep* %133 to %struct.ufs2_dinode**
  %135 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %134, align 8
  %136 = call i32 @ffs_verify_dinode_ckhash(%struct.fs* %131, %struct.ufs2_dinode* %135)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  store i32 0, i32* %4, align 4
  br label %146

139:                                              ; preds = %130
  %140 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %141 = call i32 @ERROR(%struct.uufsd* %140, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %146

142:                                              ; preds = %89
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %145 = call i32 @ERROR(%struct.uufsd* %144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %146

146:                                              ; preds = %143, %139, %138, %111, %47, %25
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @ERROR(%struct.uufsd*, i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @bread(%struct.uufsd*, i32, i32*, i32) #1

declare dso_local i32 @fsbtodb(%struct.fs*, i32) #1

declare dso_local i32 @ino_to_fsba(%struct.fs*, i64) #1

declare dso_local i64 @INOPB(%struct.fs*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ffs_verify_dinode_ckhash(%struct.fs*, %struct.ufs2_dinode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
