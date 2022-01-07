; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man_html.c_list_continues.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man_html.c_list_continues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i64, i64, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.roff_node* }

@ROFFT_BLOCK = common dso_local global i64 0, align 8
@MAN_TP = common dso_local global i64 0, align 8
@MAN_TQ = common dso_local global i64 0, align 8
@MAN_IP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\-\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\\(bu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.roff_node*, %struct.roff_node*)* @list_continues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @list_continues(%struct.roff_node* %0, %struct.roff_node* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.roff_node*, align 8
  %5 = alloca %struct.roff_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.roff_node* %0, %struct.roff_node** %4, align 8
  store %struct.roff_node* %1, %struct.roff_node** %5, align 8
  %10 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %11 = icmp eq %struct.roff_node* %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %2
  %13 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %14 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ROFFT_BLOCK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %12
  %19 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %20 = icmp eq %struct.roff_node* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %23 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ROFFT_BLOCK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %18, %12, %2
  store i8 0, i8* %3, align 1
  br label %154

28:                                               ; preds = %21
  %29 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %30 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MAN_TP, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %36 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MAN_TQ, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %34, %28
  %41 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %42 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MAN_TP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %48 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MAN_TQ, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %40
  store i8 32, i8* %3, align 1
  br label %154

53:                                               ; preds = %46, %34
  %54 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %55 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MAN_IP, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %61 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MAN_IP, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59, %53
  store i8 0, i8* %3, align 1
  br label %154

66:                                               ; preds = %59
  %67 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %68 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.roff_node*, %struct.roff_node** %70, align 8
  store %struct.roff_node* %71, %struct.roff_node** %4, align 8
  %72 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %73 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.roff_node*, %struct.roff_node** %75, align 8
  store %struct.roff_node* %76, %struct.roff_node** %5, align 8
  %77 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %78 = icmp eq %struct.roff_node* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %84

80:                                               ; preds = %66
  %81 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %82 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  br label %84

84:                                               ; preds = %80, %79
  %85 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %79 ], [ %83, %80 ]
  store i8* %85, i8** %6, align 8
  %86 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %87 = icmp eq %struct.roff_node* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %93

89:                                               ; preds = %84
  %90 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %91 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  br label %93

93:                                               ; preds = %89, %88
  %94 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %88 ], [ %92, %89 ]
  store i8* %94, i8** %7, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %112

99:                                               ; preds = %93
  %100 = load i8*, i8** %6, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %110

104:                                              ; preds = %99
  %105 = load i8*, i8** %6, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 98, i32 32
  br label %110

110:                                              ; preds = %104, %103
  %111 = phi i32 [ 45, %103 ], [ %109, %104 ]
  br label %112

112:                                              ; preds = %110, %98
  %113 = phi i32 [ 42, %98 ], [ %111, %110 ]
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %8, align 1
  %115 = load i8*, i8** %7, align 8
  %116 = call i64 @strcmp(i8* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %132

119:                                              ; preds = %112
  %120 = load i8*, i8** %7, align 8
  %121 = call i64 @strcmp(i8* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %130

124:                                              ; preds = %119
  %125 = load i8*, i8** %7, align 8
  %126 = call i64 @strcmp(i8* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %127 = icmp eq i64 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 98, i32 32
  br label %130

130:                                              ; preds = %124, %123
  %131 = phi i32 [ 45, %123 ], [ %129, %124 ]
  br label %132

132:                                              ; preds = %130, %118
  %133 = phi i32 [ 42, %118 ], [ %131, %130 ]
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %9, align 1
  %135 = load i8, i8* %8, align 1
  %136 = sext i8 %135 to i32
  %137 = load i8, i8* %9, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %136, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  br label %151

141:                                              ; preds = %132
  %142 = load i8, i8* %8, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 98
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %149

146:                                              ; preds = %141
  %147 = load i8, i8* %8, align 1
  %148 = sext i8 %147 to i32
  br label %149

149:                                              ; preds = %146, %145
  %150 = phi i32 [ 42, %145 ], [ %148, %146 ]
  br label %151

151:                                              ; preds = %149, %140
  %152 = phi i32 [ 0, %140 ], [ %150, %149 ]
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %3, align 1
  br label %154

154:                                              ; preds = %151, %65, %52, %27
  %155 = load i8, i8* %3, align 1
  ret i8 %155
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
