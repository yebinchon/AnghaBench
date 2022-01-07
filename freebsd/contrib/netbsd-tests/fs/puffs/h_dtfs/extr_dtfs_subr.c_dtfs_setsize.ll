; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_subr.c_dtfs_setsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_subr.c_dtfs_setsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.dtfs_file = type { i32, i64, i32* }
%struct.dtfs_mount = type { i32 }

@DTFS_BLOCKSIZE = common dso_local global i32 0, align 4
@DTFS_BLOCKSHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtfs_setsize(%struct.puffs_node* %0, i64 %1) #0 {
  %3 = alloca %struct.puffs_node*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dtfs_file*, align 8
  %6 = alloca %struct.dtfs_mount*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.puffs_node* %0, %struct.puffs_node** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.puffs_node*, %struct.puffs_node** %3, align 8
  %12 = call %struct.dtfs_file* @DTFS_PTOF(%struct.puffs_node* %11)
  store %struct.dtfs_file* %12, %struct.dtfs_file** %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.dtfs_file*, %struct.dtfs_file** %5, align 8
  %15 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @DTFS_BLOCKSIZE, align 4
  %18 = call i64 @ROUNDUP(i64 %16, i32 %17)
  %19 = icmp sgt i64 %13, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.puffs_node*, %struct.puffs_node** %3, align 8
  %23 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %21, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %113

33:                                               ; preds = %30, %2
  %34 = load i64, i64* %4, align 8
  %35 = load i32, i32* @DTFS_BLOCKSHIFT, align 4
  %36 = call i32 @BLOCKNUM(i64 %34, i32 %35)
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %33
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %59, %41
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.dtfs_file*, %struct.dtfs_file** %5, align 8
  %47 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load %struct.dtfs_file*, %struct.dtfs_file** %5, align 8
  %52 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @free(i32 %57)
  br label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %44

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62, %33
  %64 = load %struct.dtfs_file*, %struct.dtfs_file** %5, align 8
  %65 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = mul i64 %67, 8
  %69 = call i32* @erealloc(i32* %66, i64 %68)
  %70 = load %struct.dtfs_file*, %struct.dtfs_file** %5, align 8
  %71 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %70, i32 0, i32 2
  store i32* %69, i32** %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %105, label %74

74:                                               ; preds = %63
  %75 = load %struct.dtfs_file*, %struct.dtfs_file** %5, align 8
  %76 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %101, %74
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %7, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %78
  %84 = load i32, i32* @DTFS_BLOCKSIZE, align 4
  %85 = call i32 @emalloc(i32 %84)
  %86 = load %struct.dtfs_file*, %struct.dtfs_file** %5, align 8
  %87 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  %92 = load %struct.dtfs_file*, %struct.dtfs_file** %5, align 8
  %93 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DTFS_BLOCKSIZE, align 4
  %100 = call i32 @memset(i32 %98, i32 0, i32 %99)
  br label %101

101:                                              ; preds = %83
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %78

104:                                              ; preds = %78
  br label %105

105:                                              ; preds = %104, %63
  %106 = load i64, i64* %4, align 8
  %107 = load %struct.dtfs_file*, %struct.dtfs_file** %5, align 8
  %108 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* %7, align 8
  %110 = trunc i64 %109 to i32
  %111 = load %struct.dtfs_file*, %struct.dtfs_file** %5, align 8
  %112 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %105, %30
  %114 = load %struct.puffs_node*, %struct.puffs_node** %3, align 8
  %115 = call %struct.dtfs_mount* @puffs_pn_getmntspecific(%struct.puffs_node* %114)
  store %struct.dtfs_mount* %115, %struct.dtfs_mount** %6, align 8
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %113
  %119 = load i64, i64* %4, align 8
  %120 = load %struct.puffs_node*, %struct.puffs_node** %3, align 8
  %121 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %119, %123
  %125 = load %struct.dtfs_mount*, %struct.dtfs_mount** %6, align 8
  %126 = getelementptr inbounds %struct.dtfs_mount, %struct.dtfs_mount* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %124
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %126, align 4
  br label %144

131:                                              ; preds = %113
  %132 = load %struct.puffs_node*, %struct.puffs_node** %3, align 8
  %133 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %4, align 8
  %137 = sub nsw i64 %135, %136
  %138 = load %struct.dtfs_mount*, %struct.dtfs_mount** %6, align 8
  %139 = getelementptr inbounds %struct.dtfs_mount, %struct.dtfs_mount* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = sub nsw i64 %141, %137
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %139, align 4
  br label %144

144:                                              ; preds = %131, %118
  %145 = load i64, i64* %4, align 8
  %146 = load %struct.puffs_node*, %struct.puffs_node** %3, align 8
  %147 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  store i64 %145, i64* %148, align 8
  %149 = load i64, i64* %4, align 8
  %150 = load i32, i32* @DTFS_BLOCKSHIFT, align 4
  %151 = call i32 @BLOCKNUM(i64 %149, i32 %150)
  %152 = load i32, i32* @DTFS_BLOCKSHIFT, align 4
  %153 = ashr i32 %151, %152
  %154 = load %struct.puffs_node*, %struct.puffs_node** %3, align 8
  %155 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  store i32 %153, i32* %156, align 8
  ret void
}

declare dso_local %struct.dtfs_file* @DTFS_PTOF(%struct.puffs_node*) #1

declare dso_local i64 @ROUNDUP(i64, i32) #1

declare dso_local i32 @BLOCKNUM(i64, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32* @erealloc(i32*, i64) #1

declare dso_local i32 @emalloc(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.dtfs_mount* @puffs_pn_getmntspecific(%struct.puffs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
