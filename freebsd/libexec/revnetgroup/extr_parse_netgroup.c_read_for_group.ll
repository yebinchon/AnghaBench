; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/revnetgroup/extr_parse_netgroup.c_read_for_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/revnetgroup/extr_parse_netgroup.c_read_for_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linelist = type { i8*, i8*, %struct.linelist*, i64 }

@LINSIZ = common dso_local global i32 0, align 4
@gtable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@linehead = common dso_local global %struct.linelist* null, align 8
@netf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.linelist* (i8*)* @read_for_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.linelist* @read_for_group(i8* %0) #0 {
  %2 = alloca %struct.linelist*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.linelist*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %16 = load i32, i32* @LINSIZ, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  store i8* null, i8** %14, align 8
  %21 = load i32, i32* @gtable, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @lookup(i32 %21, i8* %22)
  store i8* %23, i8** %14, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25)
  store i8* %20, i8** %4, align 8
  br label %27

27:                                               ; preds = %39, %1
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 9
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ true, %27 ], [ %36, %32 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %4, align 8
  br label %27

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  store i8* %43, i8** %5, align 8
  br label %44

44:                                               ; preds = %66, %42
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 32
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load i8*, i8** %4, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 9
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i8*, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 10
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i8*, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %59, %54, %49, %44
  %65 = phi i1 [ false, %54 ], [ false, %49 ], [ false, %44 ], [ %63, %59 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %4, align 8
  br label %44

69:                                               ; preds = %64
  %70 = load i8*, i8** %4, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %88, %69
  %77 = load i8*, i8** %4, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 32
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** %4, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 9
  br label %86

86:                                               ; preds = %81, %76
  %87 = phi i1 [ true, %76 ], [ %85, %81 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %4, align 8
  br label %76

91:                                               ; preds = %86
  %92 = load i8*, i8** %4, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 10
  br i1 %95, label %96, label %199

96:                                               ; preds = %91
  %97 = load i8*, i8** %4, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %199

101:                                              ; preds = %96
  %102 = call i64 @malloc(i32 32)
  %103 = inttoptr i64 %102 to %struct.linelist*
  store %struct.linelist* %103, %struct.linelist** %11, align 8
  %104 = load %struct.linelist*, %struct.linelist** %11, align 8
  %105 = getelementptr inbounds %struct.linelist, %struct.linelist* %104, i32 0, i32 3
  store i64 0, i64* %105, align 8
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  %108 = call i64 @malloc(i32 %107)
  %109 = inttoptr i64 %108 to i8*
  %110 = load %struct.linelist*, %struct.linelist** %11, align 8
  %111 = getelementptr inbounds %struct.linelist, %struct.linelist* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load %struct.linelist*, %struct.linelist** %11, align 8
  %114 = getelementptr inbounds %struct.linelist, %struct.linelist* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @bcopy(i8* %112, i8* %115, i32 %116)
  %118 = load %struct.linelist*, %struct.linelist** %11, align 8
  %119 = getelementptr inbounds %struct.linelist, %struct.linelist* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  store i8 0, i8* %123, align 1
  %124 = load i8*, i8** %4, align 8
  %125 = call i32 @strlen(i8* %124)
  store i32 %125, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %126

126:                                              ; preds = %187, %101
  %127 = load i8*, i8** %4, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = getelementptr inbounds i8, i8* %130, i64 -1
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 10
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %135, %126
  %139 = load i8*, i8** %4, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = getelementptr inbounds i8, i8* %142, i64 -1
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 92
  br i1 %146, label %147, label %150

147:                                              ; preds = %138
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %151

150:                                              ; preds = %138
  store i32 0, i32* %10, align 4
  br label %151

151:                                              ; preds = %150, %147
  %152 = load i32, i32* %8, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %186

154:                                              ; preds = %151
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %155, %156
  %158 = add nsw i32 %157, 1
  %159 = call i64 @malloc(i32 %158)
  %160 = inttoptr i64 %159 to i8*
  store i8* %160, i8** %6, align 8
  %161 = load i32, i32* %9, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %154
  %164 = load i8*, i8** %7, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @bcopy(i8* %164, i8* %165, i32 %166)
  %168 = load i8*, i8** %7, align 8
  %169 = call i32 @free(i8* %168)
  br label %170

170:                                              ; preds = %163, %154
  %171 = load i8*, i8** %4, align 8
  %172 = load i8*, i8** %6, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @bcopy(i8* %171, i8* %175, i32 %176)
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %9, align 4
  %181 = load i8*, i8** %6, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  store i8 0, i8* %184, align 1
  %185 = load i8*, i8** %6, align 8
  store i8* %185, i8** %7, align 8
  br label %186

186:                                              ; preds = %170, %151
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %126, label %190

190:                                              ; preds = %187
  %191 = load i8*, i8** %6, align 8
  %192 = load %struct.linelist*, %struct.linelist** %11, align 8
  %193 = getelementptr inbounds %struct.linelist, %struct.linelist* %192, i32 0, i32 1
  store i8* %191, i8** %193, align 8
  %194 = load %struct.linelist*, %struct.linelist** @linehead, align 8
  %195 = load %struct.linelist*, %struct.linelist** %11, align 8
  %196 = getelementptr inbounds %struct.linelist, %struct.linelist* %195, i32 0, i32 2
  store %struct.linelist* %194, %struct.linelist** %196, align 8
  %197 = load %struct.linelist*, %struct.linelist** %11, align 8
  store %struct.linelist* %197, %struct.linelist** @linehead, align 8
  %198 = load %struct.linelist*, %struct.linelist** %11, align 8
  store %struct.linelist* %198, %struct.linelist** %2, align 8
  store i32 1, i32* %15, align 4
  br label %200

199:                                              ; preds = %96, %91
  store %struct.linelist* null, %struct.linelist** %2, align 8
  store i32 1, i32* %15, align 4
  br label %200

200:                                              ; preds = %199, %190
  %201 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %201)
  %202 = load %struct.linelist*, %struct.linelist** %2, align 8
  ret %struct.linelist* %202
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @lookup(i32, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @bcopy(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
