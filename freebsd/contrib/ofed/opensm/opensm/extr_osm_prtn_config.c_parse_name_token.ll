; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_parse_name_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_parse_name_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**)* @parse_name_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_name_token(i8* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8**, i8*** %7, align 8
  store i8* null, i8** %11, align 8
  %12 = load i8**, i8*** %6, align 8
  store i8* null, i8** %12, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %31, %3
  %15 = load i8*, i8** %9, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %9, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 9
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %9, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 10
  br label %29

29:                                               ; preds = %24, %19, %14
  %30 = phi i1 [ true, %19 ], [ true, %14 ], [ %28, %24 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %9, align 8
  br label %14

34:                                               ; preds = %29
  %35 = load i8*, i8** %9, align 8
  %36 = call i8* @strchr(i8* %35, i8 signext 61)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %10, align 8
  store i8 0, i8* %40, align 1
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load i8*, i8** %10, align 8
  store i8* %46, i8** %5, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8* %51, i8** %10, align 8
  br label %52

52:                                               ; preds = %80, %42
  %53 = load i8*, i8** %10, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = icmp ne i8* %53, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %52
  %57 = load i8*, i8** %10, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** %10, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 32
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** %10, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 9
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %10, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 10
  br label %76

76:                                               ; preds = %71, %66, %61, %56
  %77 = phi i1 [ true, %66 ], [ true, %61 ], [ true, %56 ], [ %75, %71 ]
  br label %78

78:                                               ; preds = %76, %52
  %79 = phi i1 [ false, %52 ], [ %77, %76 ]
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 -1
  store i8* %82, i8** %10, align 8
  store i8 0, i8* %81, align 1
  br label %52

83:                                               ; preds = %78
  %84 = load i8*, i8** %9, align 8
  %85 = load i8**, i8*** %6, align 8
  store i8* %84, i8** %85, align 8
  %86 = load i8*, i8** %5, align 8
  store i8* %86, i8** %9, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %162

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %109, %91
  %93 = load i8*, i8** %9, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 32
  br i1 %96, label %107, label %97

97:                                               ; preds = %92
  %98 = load i8*, i8** %9, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 9
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load i8*, i8** %9, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 10
  br label %107

107:                                              ; preds = %102, %97, %92
  %108 = phi i1 [ true, %97 ], [ true, %92 ], [ %106, %102 ]
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %9, align 8
  br label %92

112:                                              ; preds = %107
  %113 = load i8*, i8** %9, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 @strlen(i8* %114)
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  store i8* %117, i8** %10, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = trunc i64 %122 to i32
  %124 = add nsw i32 %123, 1
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %155, %112
  %128 = load i8*, i8** %10, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = icmp ne i8* %128, %129
  br i1 %130, label %131, label %153

131:                                              ; preds = %127
  %132 = load i8*, i8** %10, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %151, label %136

136:                                              ; preds = %131
  %137 = load i8*, i8** %10, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 32
  br i1 %140, label %151, label %141

141:                                              ; preds = %136
  %142 = load i8*, i8** %10, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 9
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = load i8*, i8** %10, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 10
  br label %151

151:                                              ; preds = %146, %141, %136, %131
  %152 = phi i1 [ true, %141 ], [ true, %136 ], [ true, %131 ], [ %150, %146 ]
  br label %153

153:                                              ; preds = %151, %127
  %154 = phi i1 [ false, %127 ], [ %152, %151 ]
  br i1 %154, label %155, label %158

155:                                              ; preds = %153
  %156 = load i8*, i8** %10, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 -1
  store i8* %157, i8** %10, align 8
  store i8 0, i8* %156, align 1
  br label %127

158:                                              ; preds = %153
  %159 = load i8*, i8** %9, align 8
  %160 = load i8**, i8*** %7, align 8
  store i8* %159, i8** %160, align 8
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %158, %89
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
