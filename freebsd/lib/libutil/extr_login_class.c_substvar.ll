; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_class.c_substvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_class.c_substvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"~$\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.passwd*, i32, i32, i32)* @substvar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @substvar(i8* %0, %struct.passwd* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.passwd* %1, %struct.passwd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %177

20:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.passwd*, %struct.passwd** %7, align 8
  %22 = icmp ne %struct.passwd* %21, null
  br i1 %22, label %23, label %49

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  store i8* %24, i8** %15, align 8
  br label %25

25:                                               ; preds = %45, %23
  %26 = load i8*, i8** %15, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load i8*, i8** %15, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 126
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %12, align 4
  %38 = load i8*, i8** %15, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 36
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %30
  %46 = load i8*, i8** %15, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %15, align 8
  br label %25

48:                                               ; preds = %25
  br label %49

49:                                               ; preds = %48, %20
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 %52, %53
  %55 = add nsw i32 %51, %54
  %56 = load i32, i32* %13, align 4
  %57 = sub nsw i32 %55, %56
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %59, %60
  %62 = mul nsw i32 %58, %61
  %63 = add nsw i32 %57, %62
  %64 = load i32, i32* %12, align 4
  %65 = sub nsw i32 %63, %64
  %66 = add nsw i32 %65, 1
  %67 = call i8* @malloc(i32 %66)
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %176

70:                                               ; preds = %49
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i8* @strcpy(i8* %71, i8* %72)
  store i8* %73, i8** %14, align 8
  %74 = load %struct.passwd*, %struct.passwd** %7, align 8
  %75 = icmp ne %struct.passwd* %74, null
  br i1 %75, label %76, label %175

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %173, %76
  %78 = load i8*, i8** %14, align 8
  %79 = call i32 @strcspn(i8* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %80 = load i8*, i8** %14, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %14, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %174

86:                                               ; preds = %77
  %87 = load i8*, i8** %14, align 8
  %88 = call i32 @strlen(i8* %87)
  store i32 %88, i32* %16, align 4
  %89 = load i8*, i8** %14, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = icmp ugt i8* %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %86
  %93 = load i8*, i8** %14, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 -1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 92
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load i8*, i8** %14, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 -1
  %101 = load i8*, i8** %14, align 8
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, 1
  %104 = call i32 @memmove(i8* %100, i8* %101, i32 %103)
  br label %173

105:                                              ; preds = %92, %86
  %106 = load i8*, i8** %14, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 126
  br i1 %109, label %110, label %153

110:                                              ; preds = %105
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i8*, i8** %14, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 47
  br label %119

119:                                              ; preds = %113, %110
  %120 = phi i1 [ false, %110 ], [ %118, %113 ]
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %17, align 4
  %122 = load i8*, i8** %14, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i32, i32* %17, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8*, i8** %14, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = load i32, i32* %16, align 4
  %132 = call i32 @memmove(i8* %128, i8* %130, i32 %131)
  %133 = load i8*, i8** %14, align 8
  %134 = load %struct.passwd*, %struct.passwd** %7, align 8
  %135 = getelementptr inbounds %struct.passwd, %struct.passwd* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @memmove(i8* %133, i8* %136, i32 %137)
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %119
  %142 = load i8*, i8** %14, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  store i8 47, i8* %145, align 1
  br label %146

146:                                              ; preds = %141, %119
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %17, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i8*, i8** %14, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8* %152, i8** %14, align 8
  br label %172

153:                                              ; preds = %105
  %154 = load i8*, i8** %14, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8*, i8** %14, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i32, i32* %16, align 4
  %161 = call i32 @memmove(i8* %157, i8* %159, i32 %160)
  %162 = load i8*, i8** %14, align 8
  %163 = load %struct.passwd*, %struct.passwd** %7, align 8
  %164 = getelementptr inbounds %struct.passwd, %struct.passwd* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @memmove(i8* %162, i8* %165, i32 %166)
  %168 = load i32, i32* %10, align 4
  %169 = load i8*, i8** %14, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  store i8* %171, i8** %14, align 8
  br label %172

172:                                              ; preds = %153, %146
  br label %173

173:                                              ; preds = %172, %98
  br label %77

174:                                              ; preds = %77
  br label %175

175:                                              ; preds = %174, %70
  br label %176

176:                                              ; preds = %175, %49
  br label %177

177:                                              ; preds = %176, %5
  %178 = load i8*, i8** %11, align 8
  ret i8* %178
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strcpy(i8*, i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
