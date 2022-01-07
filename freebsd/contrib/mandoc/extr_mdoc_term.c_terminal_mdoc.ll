; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_term.c_terminal_mdoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_term.c_terminal_mdoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_meta = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.roff_node* }
%struct.roff_node = type { i64, i64, i64, i32, %struct.roff_node*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.roff_node* }
%struct.termp = type { i64, i32, i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".5i\00", align 1
@MDOC_Sh = common dso_local global i64 0, align 8
@SEC_SYNOPSIS = common dso_local global i64 0, align 8
@SEC_NAME = common dso_local global i64 0, align 8
@TERMP_NOSPACE = common dso_local global i32 0, align 4
@print_mdoc_head = common dso_local global i32 0, align 4
@print_mdoc_foot = common dso_local global i32 0, align 4
@ROFFT_COMMENT = common dso_local global i64 0, align 8
@NODE_NOPRT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @terminal_mdoc(i8* %0, %struct.roff_meta* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.roff_meta*, align 8
  %5 = alloca %struct.roff_node*, align 8
  %6 = alloca %struct.roff_node*, align 8
  %7 = alloca %struct.termp*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.roff_meta* %1, %struct.roff_meta** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.termp*
  store %struct.termp* %10, %struct.termp** %7, align 8
  %11 = load %struct.termp*, %struct.termp** %7, align 8
  %12 = getelementptr inbounds %struct.termp, %struct.termp* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.termp*, %struct.termp** %7, align 8
  %15 = getelementptr inbounds %struct.termp, %struct.termp* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.termp*, %struct.termp** %7, align 8
  %17 = getelementptr inbounds %struct.termp, %struct.termp* %16, i32 0, i32 5
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %13, i32* %19, align 4
  %20 = load %struct.termp*, %struct.termp** %7, align 8
  %21 = call i32 @term_tab_set(%struct.termp* %20, i8* null)
  %22 = load %struct.termp*, %struct.termp** %7, align 8
  %23 = call i32 @term_tab_set(%struct.termp* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.termp*, %struct.termp** %7, align 8
  %25 = call i32 @term_tab_set(%struct.termp* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %27 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.roff_node*, %struct.roff_node** %29, align 8
  store %struct.roff_node* %30, %struct.roff_node** %5, align 8
  %31 = load %struct.termp*, %struct.termp** %7, align 8
  %32 = getelementptr inbounds %struct.termp, %struct.termp* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %99

35:                                               ; preds = %2
  store %struct.roff_node* null, %struct.roff_node** %6, align 8
  br label %36

36:                                               ; preds = %65, %35
  %37 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %38 = icmp ne %struct.roff_node* %37, null
  br i1 %38, label %39, label %69

39:                                               ; preds = %36
  %40 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %41 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MDOC_Sh, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %65

46:                                               ; preds = %39
  %47 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %48 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SEC_SYNOPSIS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %69

53:                                               ; preds = %46
  %54 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %55 = icmp eq %struct.roff_node* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %58 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SEC_NAME, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  store %struct.roff_node* %63, %struct.roff_node** %6, align 8
  br label %64

64:                                               ; preds = %62, %56, %53
  br label %65

65:                                               ; preds = %64, %45
  %66 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %67 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %66, i32 0, i32 4
  %68 = load %struct.roff_node*, %struct.roff_node** %67, align 8
  store %struct.roff_node* %68, %struct.roff_node** %5, align 8
  br label %36

69:                                               ; preds = %52, %36
  %70 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %71 = icmp eq %struct.roff_node* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  store %struct.roff_node* %73, %struct.roff_node** %5, align 8
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i32, i32* @TERMP_NOSPACE, align 4
  %76 = load %struct.termp*, %struct.termp** %7, align 8
  %77 = getelementptr inbounds %struct.termp, %struct.termp* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %81 = icmp ne %struct.roff_node* %80, null
  br i1 %81, label %82, label %96

82:                                               ; preds = %74
  %83 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %84 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %83, i32 0, i32 5
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.roff_node*, %struct.roff_node** %88, align 8
  store %struct.roff_node* %89, %struct.roff_node** %5, align 8
  %90 = icmp ne %struct.roff_node* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load %struct.termp*, %struct.termp** %7, align 8
  %93 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %94 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %95 = call i32 @print_mdoc_nodelist(%struct.termp* %92, i32* null, %struct.roff_meta* %93, %struct.roff_node* %94)
  br label %96

96:                                               ; preds = %91, %82, %74
  %97 = load %struct.termp*, %struct.termp** %7, align 8
  %98 = call i32 @term_newln(%struct.termp* %97)
  br label %163

99:                                               ; preds = %2
  %100 = load %struct.termp*, %struct.termp** %7, align 8
  %101 = getelementptr inbounds %struct.termp, %struct.termp* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %8, align 8
  %103 = load %struct.termp*, %struct.termp** %7, align 8
  %104 = getelementptr inbounds %struct.termp, %struct.termp* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load %struct.termp*, %struct.termp** %7, align 8
  %109 = getelementptr inbounds %struct.termp, %struct.termp* %108, i32 0, i32 0
  store i64 5, i64* %109, align 8
  br label %110

110:                                              ; preds = %107, %99
  %111 = load %struct.termp*, %struct.termp** %7, align 8
  %112 = load i32, i32* @print_mdoc_head, align 4
  %113 = load i32, i32* @print_mdoc_foot, align 4
  %114 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %115 = call i32 @term_begin(%struct.termp* %111, i32 %112, i32 %113, %struct.roff_meta* %114)
  br label %116

116:                                              ; preds = %136, %110
  %117 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %118 = icmp ne %struct.roff_node* %117, null
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  %120 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %121 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @ROFFT_COMMENT, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %132, label %125

125:                                              ; preds = %119
  %126 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %127 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @NODE_NOPRT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br label %132

132:                                              ; preds = %125, %119
  %133 = phi i1 [ true, %119 ], [ %131, %125 ]
  br label %134

134:                                              ; preds = %132, %116
  %135 = phi i1 [ false, %116 ], [ %133, %132 ]
  br i1 %135, label %136, label %140

136:                                              ; preds = %134
  %137 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %138 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %137, i32 0, i32 4
  %139 = load %struct.roff_node*, %struct.roff_node** %138, align 8
  store %struct.roff_node* %139, %struct.roff_node** %5, align 8
  br label %116

140:                                              ; preds = %134
  %141 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %142 = icmp ne %struct.roff_node* %141, null
  br i1 %142, label %143, label %157

143:                                              ; preds = %140
  %144 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %145 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @MDOC_Sh, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load %struct.termp*, %struct.termp** %7, align 8
  %151 = call i32 @term_vspace(%struct.termp* %150)
  br label %152

152:                                              ; preds = %149, %143
  %153 = load %struct.termp*, %struct.termp** %7, align 8
  %154 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %155 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %156 = call i32 @print_mdoc_nodelist(%struct.termp* %153, i32* null, %struct.roff_meta* %154, %struct.roff_node* %155)
  br label %157

157:                                              ; preds = %152, %140
  %158 = load %struct.termp*, %struct.termp** %7, align 8
  %159 = call i32 @term_end(%struct.termp* %158)
  %160 = load i64, i64* %8, align 8
  %161 = load %struct.termp*, %struct.termp** %7, align 8
  %162 = getelementptr inbounds %struct.termp, %struct.termp* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %157, %96
  ret void
}

declare dso_local i32 @term_tab_set(%struct.termp*, i8*) #1

declare dso_local i32 @print_mdoc_nodelist(%struct.termp*, i32*, %struct.roff_meta*, %struct.roff_node*) #1

declare dso_local i32 @term_newln(%struct.termp*) #1

declare dso_local i32 @term_begin(%struct.termp*, i32, i32, %struct.roff_meta*) #1

declare dso_local i32 @term_vspace(%struct.termp*) #1

declare dso_local i32 @term_end(%struct.termp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
