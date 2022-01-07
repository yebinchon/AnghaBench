; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_choose_delta_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_choose_delta_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__**, %struct.TYPE_14__*, %struct.TYPE_16__*, i64, i32*)* @choose_delta_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @choose_delta_base(%struct.TYPE_15__** %0, %struct.TYPE_14__* %1, %struct.TYPE_16__* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__**, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_15__** %0, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %15, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %29, align 8
  %30 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %30, i32** %6, align 8
  br label %160

31:                                               ; preds = %5
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %35, %37
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = icmp sgt i32 %44, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %31
  %51 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %51, align 8
  %52 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %52, i32** %6, align 8
  br label %160

53:                                               ; preds = %31
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %53
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @shards_spanned(i32* %17, %struct.TYPE_14__* %61, %struct.TYPE_16__* %62, i32 %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i32, i32* %17, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %17, align 4
  %69 = shl i32 1, %68
  %70 = load i32, i32* %13, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %60
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %72, %60
  br label %78

78:                                               ; preds = %77, %53
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %79, %struct.TYPE_16__** %14, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = call i32* @svn_pool_create(i32* %80)
  store i32* %81, i32** %16, align 8
  br label %82

82:                                               ; preds = %89, %78
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %83, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = load i32*, i32** %16, align 8
  %91 = call i32 @svn_pool_clear(i32* %90)
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = load i32*, i32** %16, align 8
  %98 = call i32 @svn_fs_fs__get_node_revision(%struct.TYPE_16__** %14, %struct.TYPE_14__* %92, i32 %95, i32* %96, i32* %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  br label %82

100:                                              ; preds = %82
  %101 = load i32*, i32** %16, align 8
  %102 = call i32 @svn_pool_destroy(i32* %101)
  %103 = load i64, i64* %10, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  br label %113

109:                                              ; preds = %100
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  br label %113

113:                                              ; preds = %109, %105
  %114 = phi %struct.TYPE_15__* [ %108, %105 ], [ %112, %109 ]
  %115 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__* %114, %struct.TYPE_15__** %115, align 8
  %116 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = icmp ne %struct.TYPE_15__* %117, null
  br i1 %118, label %119, label %158

119:                                              ; preds = %113
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %120 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %20, align 4
  %124 = load i32, i32* %20, align 4
  %125 = icmp slt i32 %124, 64
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %127, align 8
  %128 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %128, i32** %6, align 8
  br label %160

129:                                              ; preds = %119
  %130 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %133 = load i32*, i32** %11, align 8
  %134 = call i32 @svn_fs_fs__rep_chain_length(i32* %18, i32* %19, %struct.TYPE_15__* %131, %struct.TYPE_14__* %132, i32* %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  %136 = load i32, i32* %18, align 4
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = mul nsw i32 2, %140
  %142 = add nsw i32 %141, 2
  %143 = icmp sge i32 %136, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %129
  %145 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %145, align 8
  br label %157

146:                                              ; preds = %129
  %147 = load i32, i32* %19, align 4
  %148 = icmp sgt i32 %147, 1
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load i32, i32* %19, align 4
  %151 = shl i32 128, %150
  %152 = load i32, i32* %20, align 4
  %153 = icmp sge i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %155, align 8
  br label %156

156:                                              ; preds = %154, %149, %146
  br label %157

157:                                              ; preds = %156, %144
  br label %158

158:                                              ; preds = %157, %113
  %159 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %159, i32** %6, align 8
  br label %160

160:                                              ; preds = %158, %126, %50, %28
  %161 = load i32*, i32** %6, align 8
  ret i32* %161
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @shards_spanned(i32*, %struct.TYPE_14__*, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_fs_fs__get_node_revision(%struct.TYPE_16__**, %struct.TYPE_14__*, i32, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_fs_fs__rep_chain_length(i32*, i32*, %struct.TYPE_15__*, %struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
