; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man_term.c_terminal_man.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man_term.c_terminal_man.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_meta = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.roff_node* }
%struct.roff_node = type { i64, i64, %struct.TYPE_8__*, i32, %struct.roff_node* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.roff_node* }
%struct.TYPE_7__ = type { %struct.roff_node* }
%struct.mtermp = type { i64, i32, i8*, i8** }
%struct.termp = type { i64, i64, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".5i\00", align 1
@MAN_SH = common dso_local global i64 0, align 8
@ROFFT_TEXT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"SYNOPSIS\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@TERMP_NOSPACE = common dso_local global i32 0, align 4
@print_man_head = common dso_local global i32 0, align 4
@print_man_foot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @terminal_man(i8* %0, %struct.roff_meta* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.roff_meta*, align 8
  %5 = alloca %struct.mtermp, align 8
  %6 = alloca %struct.termp*, align 8
  %7 = alloca %struct.roff_node*, align 8
  %8 = alloca %struct.roff_node*, align 8
  %9 = alloca %struct.roff_node*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.roff_meta* %1, %struct.roff_meta** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.termp*
  store %struct.termp* %12, %struct.termp** %6, align 8
  %13 = load %struct.termp*, %struct.termp** %6, align 8
  %14 = getelementptr inbounds %struct.termp, %struct.termp* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  %16 = load %struct.termp*, %struct.termp** %6, align 8
  %17 = getelementptr inbounds %struct.termp, %struct.termp* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.termp*, %struct.termp** %6, align 8
  %22 = getelementptr inbounds %struct.termp, %struct.termp* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.termp*, %struct.termp** %6, align 8
  %27 = getelementptr inbounds %struct.termp, %struct.termp* %26, i32 0, i32 0
  store i64 7, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %20, %2
  %29 = load %struct.termp*, %struct.termp** %6, align 8
  %30 = getelementptr inbounds %struct.termp, %struct.termp* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.termp*, %struct.termp** %6, align 8
  %33 = getelementptr inbounds %struct.termp, %struct.termp* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.termp*, %struct.termp** %6, align 8
  %35 = getelementptr inbounds %struct.termp, %struct.termp* %34, i32 0, i32 5
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %31, i32* %37, align 4
  %38 = load %struct.termp*, %struct.termp** %6, align 8
  %39 = call i32 @term_tab_set(%struct.termp* %38, i8* null)
  %40 = load %struct.termp*, %struct.termp** %6, align 8
  %41 = call i32 @term_tab_set(%struct.termp* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.termp*, %struct.termp** %6, align 8
  %43 = call i32 @term_tab_set(%struct.termp* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 @memset(%struct.mtermp* %5, i32 0, i32 32)
  %45 = load %struct.termp*, %struct.termp** %6, align 8
  %46 = load %struct.termp*, %struct.termp** %6, align 8
  %47 = getelementptr inbounds %struct.termp, %struct.termp* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i8* @term_len(%struct.termp* %45, i32 %49)
  %51 = getelementptr inbounds %struct.mtermp, %struct.mtermp* %5, i32 0, i32 3
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds %struct.mtermp, %struct.mtermp* %5, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  store i8* %50, i8** %55, align 8
  %56 = load %struct.termp*, %struct.termp** %6, align 8
  %57 = load %struct.termp*, %struct.termp** %6, align 8
  %58 = getelementptr inbounds %struct.termp, %struct.termp* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i8* @term_len(%struct.termp* %56, i32 %60)
  %62 = getelementptr inbounds %struct.mtermp, %struct.mtermp* %5, i32 0, i32 2
  store i8* %61, i8** %62, align 8
  %63 = getelementptr inbounds %struct.mtermp, %struct.mtermp* %5, i32 0, i32 1
  store i32 1, i32* %63, align 8
  %64 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %65 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.roff_node*, %struct.roff_node** %67, align 8
  store %struct.roff_node* %68, %struct.roff_node** %7, align 8
  %69 = load %struct.termp*, %struct.termp** %6, align 8
  %70 = getelementptr inbounds %struct.termp, %struct.termp* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %149

73:                                               ; preds = %28
  store %struct.roff_node* null, %struct.roff_node** %9, align 8
  br label %74

74:                                               ; preds = %115, %73
  %75 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %76 = icmp ne %struct.roff_node* %75, null
  br i1 %76, label %77, label %119

77:                                               ; preds = %74
  %78 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %79 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MAN_SH, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %115

84:                                               ; preds = %77
  %85 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %86 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %85, i32 0, i32 2
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load %struct.roff_node*, %struct.roff_node** %88, align 8
  store %struct.roff_node* %89, %struct.roff_node** %8, align 8
  %90 = load %struct.roff_node*, %struct.roff_node** %8, align 8
  %91 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ROFFT_TEXT, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %115

96:                                               ; preds = %84
  %97 = load %struct.roff_node*, %struct.roff_node** %8, align 8
  %98 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @strcmp(i32 %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %119

103:                                              ; preds = %96
  %104 = load %struct.roff_node*, %struct.roff_node** %9, align 8
  %105 = icmp eq %struct.roff_node* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load %struct.roff_node*, %struct.roff_node** %8, align 8
  %108 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @strcmp(i32 %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  store %struct.roff_node* %113, %struct.roff_node** %9, align 8
  br label %114

114:                                              ; preds = %112, %106, %103
  br label %115

115:                                              ; preds = %114, %95, %83
  %116 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %117 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %116, i32 0, i32 4
  %118 = load %struct.roff_node*, %struct.roff_node** %117, align 8
  store %struct.roff_node* %118, %struct.roff_node** %7, align 8
  br label %74

119:                                              ; preds = %102, %74
  %120 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %121 = icmp eq %struct.roff_node* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load %struct.roff_node*, %struct.roff_node** %9, align 8
  store %struct.roff_node* %123, %struct.roff_node** %7, align 8
  br label %124

124:                                              ; preds = %122, %119
  %125 = load i32, i32* @TERMP_NOSPACE, align 4
  %126 = load %struct.termp*, %struct.termp** %6, align 8
  %127 = getelementptr inbounds %struct.termp, %struct.termp* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %131 = icmp ne %struct.roff_node* %130, null
  br i1 %131, label %132, label %146

132:                                              ; preds = %124
  %133 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %134 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %133, i32 0, i32 2
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load %struct.roff_node*, %struct.roff_node** %138, align 8
  store %struct.roff_node* %139, %struct.roff_node** %7, align 8
  %140 = icmp ne %struct.roff_node* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %132
  %142 = load %struct.termp*, %struct.termp** %6, align 8
  %143 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %144 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %145 = call i32 @print_man_nodelist(%struct.termp* %142, %struct.mtermp* %5, %struct.roff_node* %143, %struct.roff_meta* %144)
  br label %146

146:                                              ; preds = %141, %132, %124
  %147 = load %struct.termp*, %struct.termp** %6, align 8
  %148 = call i32 @term_newln(%struct.termp* %147)
  br label %170

149:                                              ; preds = %28
  %150 = load %struct.termp*, %struct.termp** %6, align 8
  %151 = load i32, i32* @print_man_head, align 4
  %152 = load i32, i32* @print_man_foot, align 4
  %153 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %154 = call i32 @term_begin(%struct.termp* %150, i32 %151, i32 %152, %struct.roff_meta* %153)
  %155 = load i32, i32* @TERMP_NOSPACE, align 4
  %156 = load %struct.termp*, %struct.termp** %6, align 8
  %157 = getelementptr inbounds %struct.termp, %struct.termp* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  %160 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %161 = icmp ne %struct.roff_node* %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %149
  %163 = load %struct.termp*, %struct.termp** %6, align 8
  %164 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %165 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %166 = call i32 @print_man_nodelist(%struct.termp* %163, %struct.mtermp* %5, %struct.roff_node* %164, %struct.roff_meta* %165)
  br label %167

167:                                              ; preds = %162, %149
  %168 = load %struct.termp*, %struct.termp** %6, align 8
  %169 = call i32 @term_end(%struct.termp* %168)
  br label %170

170:                                              ; preds = %167, %146
  %171 = load i64, i64* %10, align 8
  %172 = load %struct.termp*, %struct.termp** %6, align 8
  %173 = getelementptr inbounds %struct.termp, %struct.termp* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  ret void
}

declare dso_local i32 @term_tab_set(%struct.termp*, i8*) #1

declare dso_local i32 @memset(%struct.mtermp*, i32, i32) #1

declare dso_local i8* @term_len(%struct.termp*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @print_man_nodelist(%struct.termp*, %struct.mtermp*, %struct.roff_node*, %struct.roff_meta*) #1

declare dso_local i32 @term_newln(%struct.termp*) #1

declare dso_local i32 @term_begin(%struct.termp*, i32, i32, %struct.roff_meta*) #1

declare dso_local i32 @term_end(%struct.termp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
