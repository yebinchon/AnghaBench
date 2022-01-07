; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_incoming_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_incoming_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_wc_operation_update = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"An update operation tried to edit a file.\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"An update operation tried to add a file.\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"An update operation tried to delete or move a file.\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"An update operation tried to replace a file.\00", align 1
@svn_wc_operation_switch = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"A switch operation tried to edit a file.\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"A switch operation tried to add a file.\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"A switch operation tried to delete or move a file.\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"A switch operation tried to replace a file.\00", align 1
@svn_wc_operation_merge = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"A merge operation tried to edit a file.\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"A merge operation tried to add a file.\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"A merge operation tried to delete or move a file.\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"A merge operation tried to replace a file.\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"An update operation tried to change a directory.\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"An update operation tried to add a directory.\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"An update operation tried to delete or move a directory.\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"An update operation tried to replace a directory.\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"A switch operation tried to edit a directory.\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"A switch operation tried to add a directory.\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"A switch operation tried to delete or move a directory.\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"A switch operation tried to replace a directory.\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"A merge operation tried to edit a directory.\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"A merge operation tried to add a directory.\00", align 1
@.str.22 = private unnamed_addr constant [55 x i8] c"A merge operation tried to delete or move a directory.\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"A merge operation tried to replace a directory.\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"An update operation tried to edit an item.\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"An update operation tried to add an item.\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"An update operation tried to delete or move an item.\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"An update operation tried to replace an item.\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"A switch operation tried to edit an item.\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"A switch operation tried to add an item.\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"A switch operation tried to delete or move an item.\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"A switch operation tried to replace an item.\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"A merge operation tried to edit an item.\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"A merge operation tried to add an item.\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"A merge operation tried to delete or move an item.\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"A merge operation tried to replace an item.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32)* @describe_incoming_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @describe_incoming_change(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %153 [
    i32 135, label %9
    i32 133, label %9
    i32 136, label %57
    i32 134, label %105
    i32 132, label %105
  ]

9:                                                ; preds = %3, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @svn_wc_operation_update, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %23 [
    i32 129, label %15
    i32 131, label %17
    i32 130, label %19
    i32 128, label %21
  ]

15:                                               ; preds = %13
  %16 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %4, align 8
  br label %154

17:                                               ; preds = %13
  %18 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** %4, align 8
  br label %154

19:                                               ; preds = %13
  %20 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  store i8* %20, i8** %4, align 8
  br label %154

21:                                               ; preds = %13
  %22 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  store i8* %22, i8** %4, align 8
  br label %154

23:                                               ; preds = %13
  br label %56

24:                                               ; preds = %9
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @svn_wc_operation_switch, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %38 [
    i32 129, label %30
    i32 131, label %32
    i32 130, label %34
    i32 128, label %36
  ]

30:                                               ; preds = %28
  %31 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  store i8* %31, i8** %4, align 8
  br label %154

32:                                               ; preds = %28
  %33 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  store i8* %33, i8** %4, align 8
  br label %154

34:                                               ; preds = %28
  %35 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  store i8* %35, i8** %4, align 8
  br label %154

36:                                               ; preds = %28
  %37 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  store i8* %37, i8** %4, align 8
  br label %154

38:                                               ; preds = %28
  br label %55

39:                                               ; preds = %24
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @svn_wc_operation_merge, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %53 [
    i32 129, label %45
    i32 131, label %47
    i32 130, label %49
    i32 128, label %51
  ]

45:                                               ; preds = %43
  %46 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  store i8* %46, i8** %4, align 8
  br label %154

47:                                               ; preds = %43
  %48 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  store i8* %48, i8** %4, align 8
  br label %154

49:                                               ; preds = %43
  %50 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  store i8* %50, i8** %4, align 8
  br label %154

51:                                               ; preds = %43
  %52 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  store i8* %52, i8** %4, align 8
  br label %154

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %39
  br label %55

55:                                               ; preds = %54, %38
  br label %56

56:                                               ; preds = %55, %23
  br label %153

57:                                               ; preds = %3
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @svn_wc_operation_update, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  switch i32 %62, label %71 [
    i32 129, label %63
    i32 131, label %65
    i32 130, label %67
    i32 128, label %69
  ]

63:                                               ; preds = %61
  %64 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  store i8* %64, i8** %4, align 8
  br label %154

65:                                               ; preds = %61
  %66 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0))
  store i8* %66, i8** %4, align 8
  br label %154

67:                                               ; preds = %61
  %68 = call i8* @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0))
  store i8* %68, i8** %4, align 8
  br label %154

69:                                               ; preds = %61
  %70 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0))
  store i8* %70, i8** %4, align 8
  br label %154

71:                                               ; preds = %61
  br label %104

72:                                               ; preds = %57
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @svn_wc_operation_switch, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load i32, i32* %6, align 4
  switch i32 %77, label %86 [
    i32 129, label %78
    i32 131, label %80
    i32 130, label %82
    i32 128, label %84
  ]

78:                                               ; preds = %76
  %79 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0))
  store i8* %79, i8** %4, align 8
  br label %154

80:                                               ; preds = %76
  %81 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0))
  store i8* %81, i8** %4, align 8
  br label %154

82:                                               ; preds = %76
  %83 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i64 0, i64 0))
  store i8* %83, i8** %4, align 8
  br label %154

84:                                               ; preds = %76
  %85 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i64 0, i64 0))
  store i8* %85, i8** %4, align 8
  br label %154

86:                                               ; preds = %76
  br label %103

87:                                               ; preds = %72
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @svn_wc_operation_merge, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %87
  %92 = load i32, i32* %6, align 4
  switch i32 %92, label %101 [
    i32 129, label %93
    i32 131, label %95
    i32 130, label %97
    i32 128, label %99
  ]

93:                                               ; preds = %91
  %94 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0))
  store i8* %94, i8** %4, align 8
  br label %154

95:                                               ; preds = %91
  %96 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i64 0, i64 0))
  store i8* %96, i8** %4, align 8
  br label %154

97:                                               ; preds = %91
  %98 = call i8* @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0))
  store i8* %98, i8** %4, align 8
  br label %154

99:                                               ; preds = %91
  %100 = call i8* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i64 0, i64 0))
  store i8* %100, i8** %4, align 8
  br label %154

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %87
  br label %103

103:                                              ; preds = %102, %86
  br label %104

104:                                              ; preds = %103, %71
  br label %153

105:                                              ; preds = %3, %3
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @svn_wc_operation_update, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %105
  %110 = load i32, i32* %6, align 4
  switch i32 %110, label %119 [
    i32 129, label %111
    i32 131, label %113
    i32 130, label %115
    i32 128, label %117
  ]

111:                                              ; preds = %109
  %112 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0))
  store i8* %112, i8** %4, align 8
  br label %154

113:                                              ; preds = %109
  %114 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0))
  store i8* %114, i8** %4, align 8
  br label %154

115:                                              ; preds = %109
  %116 = call i8* @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.26, i64 0, i64 0))
  store i8* %116, i8** %4, align 8
  br label %154

117:                                              ; preds = %109
  %118 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i64 0, i64 0))
  store i8* %118, i8** %4, align 8
  br label %154

119:                                              ; preds = %109
  br label %152

120:                                              ; preds = %105
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @svn_wc_operation_switch, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = load i32, i32* %6, align 4
  switch i32 %125, label %134 [
    i32 129, label %126
    i32 131, label %128
    i32 130, label %130
    i32 128, label %132
  ]

126:                                              ; preds = %124
  %127 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i64 0, i64 0))
  store i8* %127, i8** %4, align 8
  br label %154

128:                                              ; preds = %124
  %129 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.29, i64 0, i64 0))
  store i8* %129, i8** %4, align 8
  br label %154

130:                                              ; preds = %124
  %131 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i64 0, i64 0))
  store i8* %131, i8** %4, align 8
  br label %154

132:                                              ; preds = %124
  %133 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i64 0, i64 0))
  store i8* %133, i8** %4, align 8
  br label %154

134:                                              ; preds = %124
  br label %151

135:                                              ; preds = %120
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @svn_wc_operation_merge, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %135
  %140 = load i32, i32* %6, align 4
  switch i32 %140, label %149 [
    i32 129, label %141
    i32 131, label %143
    i32 130, label %145
    i32 128, label %147
  ]

141:                                              ; preds = %139
  %142 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i64 0, i64 0))
  store i8* %142, i8** %4, align 8
  br label %154

143:                                              ; preds = %139
  %144 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0))
  store i8* %144, i8** %4, align 8
  br label %154

145:                                              ; preds = %139
  %146 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0))
  store i8* %146, i8** %4, align 8
  br label %154

147:                                              ; preds = %139
  %148 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.35, i64 0, i64 0))
  store i8* %148, i8** %4, align 8
  br label %154

149:                                              ; preds = %139
  br label %150

150:                                              ; preds = %149, %135
  br label %151

151:                                              ; preds = %150, %134
  br label %152

152:                                              ; preds = %151, %119
  br label %153

153:                                              ; preds = %3, %152, %104, %56
  store i8* null, i8** %4, align 8
  br label %154

154:                                              ; preds = %153, %147, %145, %143, %141, %132, %130, %128, %126, %117, %115, %113, %111, %99, %97, %95, %93, %84, %82, %80, %78, %69, %67, %65, %63, %51, %49, %47, %45, %36, %34, %32, %30, %21, %19, %17, %15
  %155 = load i8*, i8** %4, align 8
  ret i8* %155
}

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
