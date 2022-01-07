; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn.c_eqn_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn.c_eqn_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eqn_node = type { i64, i32, %struct.TYPE_2__*, %struct.eqn_def*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.eqn_def = type { i64, i64, i32*, i32* }

@MODE_NOSUB = common dso_local global i32 0, align 4
@EQN_TOK_EOF = common dso_local global i64 0, align 8
@MANDOCERR_REQ_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"define\00", align 1
@MODE_QUOTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"define %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eqn_node*)* @eqn_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eqn_def(%struct.eqn_node* %0) #0 {
  %2 = alloca %struct.eqn_node*, align 8
  %3 = alloca %struct.eqn_def*, align 8
  %4 = alloca i32, align 4
  store %struct.eqn_node* %0, %struct.eqn_node** %2, align 8
  %5 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %6 = load i32, i32* @MODE_NOSUB, align 4
  %7 = call i64 @eqn_next(%struct.eqn_node* %5, i32 %6)
  %8 = load i64, i64* @EQN_TOK_EOF, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load i32, i32* @MANDOCERR_REQ_EMPTY, align 4
  %12 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %13 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %18 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %11, i32 %16, i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %169

23:                                               ; preds = %1
  %24 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %25 = call %struct.eqn_def* @eqn_def_find(%struct.eqn_node* %24)
  store %struct.eqn_def* %25, %struct.eqn_def** %3, align 8
  %26 = icmp eq %struct.eqn_def* %25, null
  br i1 %26, label %27, label %111

27:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %31 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %37 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %36, i32 0, i32 3
  %38 = load %struct.eqn_def*, %struct.eqn_def** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %38, i64 %40
  %42 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 0, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %50

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %28

50:                                               ; preds = %45, %28
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %53 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %51, %55
  br i1 %56, label %57, label %85

57:                                               ; preds = %50
  %58 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %59 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %63 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %62, i32 0, i32 3
  %64 = load %struct.eqn_def*, %struct.eqn_def** %63, align 8
  %65 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %66 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = call %struct.eqn_def* @mandoc_reallocarray(%struct.eqn_def* %64, i64 %67, i32 32)
  %69 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %70 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %69, i32 0, i32 3
  store %struct.eqn_def* %68, %struct.eqn_def** %70, align 8
  %71 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %72 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %71, i32 0, i32 3
  %73 = load %struct.eqn_def*, %struct.eqn_def** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %73, i64 %75
  %77 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %76, i32 0, i32 2
  store i32* null, i32** %77, align 8
  %78 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %79 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %78, i32 0, i32 3
  %80 = load %struct.eqn_def*, %struct.eqn_def** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %80, i64 %82
  %84 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %83, i32 0, i32 3
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %57, %50
  %86 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %87 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %86, i32 0, i32 3
  %88 = load %struct.eqn_def*, %struct.eqn_def** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %88, i64 %90
  store %struct.eqn_def* %91, %struct.eqn_def** %3, align 8
  %92 = load %struct.eqn_def*, %struct.eqn_def** %3, align 8
  %93 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @free(i32* %94)
  %96 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %97 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %100 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i8* @mandoc_strndup(i32 %98, i64 %101)
  %103 = bitcast i8* %102 to i32*
  %104 = load %struct.eqn_def*, %struct.eqn_def** %3, align 8
  %105 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %104, i32 0, i32 3
  store i32* %103, i32** %105, align 8
  %106 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %107 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.eqn_def*, %struct.eqn_def** %3, align 8
  %110 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %85, %23
  %112 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %113 = load i32, i32* @MODE_QUOTED, align 4
  %114 = call i64 @eqn_next(%struct.eqn_node* %112, i32 %113)
  %115 = load i64, i64* @EQN_TOK_EOF, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %149

117:                                              ; preds = %111
  %118 = load i32, i32* @MANDOCERR_REQ_EMPTY, align 4
  %119 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %120 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %125 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.eqn_def*, %struct.eqn_def** %3, align 8
  %130 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %118, i32 %123, i32 %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %131)
  %133 = load %struct.eqn_def*, %struct.eqn_def** %3, align 8
  %134 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @free(i32* %135)
  %137 = load %struct.eqn_def*, %struct.eqn_def** %3, align 8
  %138 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @free(i32* %139)
  %141 = load %struct.eqn_def*, %struct.eqn_def** %3, align 8
  %142 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %141, i32 0, i32 2
  store i32* null, i32** %142, align 8
  %143 = load %struct.eqn_def*, %struct.eqn_def** %3, align 8
  %144 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %143, i32 0, i32 3
  store i32* null, i32** %144, align 8
  %145 = load %struct.eqn_def*, %struct.eqn_def** %3, align 8
  %146 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %145, i32 0, i32 1
  store i64 0, i64* %146, align 8
  %147 = load %struct.eqn_def*, %struct.eqn_def** %3, align 8
  %148 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %147, i32 0, i32 0
  store i64 0, i64* %148, align 8
  br label %169

149:                                              ; preds = %111
  %150 = load %struct.eqn_def*, %struct.eqn_def** %3, align 8
  %151 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @free(i32* %152)
  %154 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %155 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %158 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i8* @mandoc_strndup(i32 %156, i64 %159)
  %161 = bitcast i8* %160 to i32*
  %162 = load %struct.eqn_def*, %struct.eqn_def** %3, align 8
  %163 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %162, i32 0, i32 2
  store i32* %161, i32** %163, align 8
  %164 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %165 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.eqn_def*, %struct.eqn_def** %3, align 8
  %168 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %149, %117, %10
  ret void
}

declare dso_local i64 @eqn_next(%struct.eqn_node*, i32) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, ...) #1

declare dso_local %struct.eqn_def* @eqn_def_find(%struct.eqn_node*) #1

declare dso_local %struct.eqn_def* @mandoc_reallocarray(%struct.eqn_def*, i64, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i8* @mandoc_strndup(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
