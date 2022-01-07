; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_choose_delta_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_choose_delta_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_14__*, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_14__**, %struct.TYPE_17__*, %struct.TYPE_15__*, i64, i32*)* @choose_delta_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @choose_delta_base(%struct.TYPE_14__** %0, %struct.TYPE_17__* %1, %struct.TYPE_15__* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__**, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %15, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %30, align 8
  %31 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %31, i32** %6, align 8
  br label %174

32:                                               ; preds = %5
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %36, %38
  store i32 %39, i32* %12, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = icmp sgt i32 %45, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %32
  %52 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %52, align 8
  %53 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %53, i32** %6, align 8
  br label %174

54:                                               ; preds = %32
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %54
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @shards_spanned(i32* %17, %struct.TYPE_17__* %62, %struct.TYPE_15__* %63, i32 %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %17, align 4
  %70 = shl i32 1, %69
  %71 = load i32, i32* %13, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %61
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %73, %61
  br label %79

79:                                               ; preds = %78, %54
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %80, %struct.TYPE_15__** %14, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i32* @svn_pool_create(i32* %81)
  store i32* %82, i32** %16, align 8
  br label %83

83:                                               ; preds = %90, %79
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %84, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %83
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %18, align 4
  %94 = load i32*, i32** %16, align 8
  %95 = call i32 @svn_pool_clear(i32* %94)
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = load i32*, i32** %16, align 8
  %99 = call i32 @svn_fs_x__get_node_revision(%struct.TYPE_15__** %14, %struct.TYPE_17__* %96, i32* %18, i32* %97, i32* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  br label %83

101:                                              ; preds = %83
  %102 = load i32*, i32** %16, align 8
  %103 = call i32 @svn_pool_destroy(i32* %102)
  %104 = load i64, i64* %10, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  br label %114

110:                                              ; preds = %101
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  br label %114

114:                                              ; preds = %110, %106
  %115 = phi %struct.TYPE_14__* [ %109, %106 ], [ %113, %110 ]
  %116 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* %115, %struct.TYPE_14__** %116, align 8
  %117 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = icmp ne %struct.TYPE_14__* %118, null
  br i1 %119, label %120, label %172

120:                                              ; preds = %114
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %121 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  br label %136

131:                                              ; preds = %120
  %132 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  br label %136

136:                                              ; preds = %131, %126
  %137 = phi i32 [ %130, %126 ], [ %135, %131 ]
  store i32 %137, i32* %21, align 4
  %138 = load i32, i32* %21, align 4
  %139 = icmp slt i32 %138, 64
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %141, align 8
  %142 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %142, i32** %6, align 8
  br label %174

143:                                              ; preds = %136
  %144 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @svn_fs_x__rep_chain_length(i32* %19, i32* %20, %struct.TYPE_14__* %145, %struct.TYPE_17__* %146, i32* %147)
  %149 = call i32 @SVN_ERR(i32 %148)
  %150 = load i32, i32* %19, align 4
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = mul nsw i32 2, %154
  %156 = add nsw i32 %155, 2
  %157 = icmp sge i32 %150, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %143
  %159 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %159, align 8
  br label %171

160:                                              ; preds = %143
  %161 = load i32, i32* %20, align 4
  %162 = icmp sgt i32 %161, 1
  br i1 %162, label %163, label %170

163:                                              ; preds = %160
  %164 = load i32, i32* %20, align 4
  %165 = shl i32 128, %164
  %166 = load i32, i32* %21, align 4
  %167 = icmp sge i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %169, align 8
  br label %170

170:                                              ; preds = %168, %163, %160
  br label %171

171:                                              ; preds = %170, %158
  br label %172

172:                                              ; preds = %171, %114
  %173 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %173, i32** %6, align 8
  br label %174

174:                                              ; preds = %172, %140, %51, %29
  %175 = load i32*, i32** %6, align 8
  ret i32* %175
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @shards_spanned(i32*, %struct.TYPE_17__*, %struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_fs_x__get_node_revision(%struct.TYPE_15__**, %struct.TYPE_17__*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_fs_x__rep_chain_length(i32*, i32*, %struct.TYPE_14__*, %struct.TYPE_17__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
