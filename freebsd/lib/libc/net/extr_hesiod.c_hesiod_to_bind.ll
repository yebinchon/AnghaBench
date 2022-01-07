; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_hesiod.c_hesiod_to_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_hesiod.c_hesiod_to_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hesiod_p = type { i8*, i8* }

@MAXDNAME = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"rhs-extension\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hesiod_to_bind(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hesiod_p*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.hesiod_p*
  store %struct.hesiod_p* %18, %struct.hesiod_p** %8, align 8
  %19 = load i32, i32* @MAXDNAME, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  store i8** null, i8*** %13, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = trunc i64 %20 to i32
  %25 = call i32 @strlcpy(i8* %22, i8* %23, i32 %24)
  %26 = sext i32 %25 to i64
  %27 = icmp uge i64 %26, %20
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @EMSGSIZE, align 4
  store i32 %29, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  store i32 1, i32* %16, align 4
  br label %173

30:                                               ; preds = %3
  %31 = call i8* @strchr(i8* %22, i8 signext 64)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %11, align 8
  store i8 0, i8* %35, align 1
  %37 = load i8*, i8** %11, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 46)
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = ptrtoint i8* %22 to i64
  %45 = sub i64 %43, %44
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  store i8* %46, i8** %14, align 8
  br label %59

47:                                               ; preds = %34
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call i8** @hesiod_resolve(i8* %48, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8** %50, i8*** %13, align 8
  %51 = load i8**, i8*** %13, align 8
  %52 = icmp ne i8** %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i8**, i8*** %13, align 8
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %14, align 8
  br label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @ENOENT, align 4
  store i32 %57, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  store i32 1, i32* %16, align 4
  br label %173

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %40
  br label %64

60:                                               ; preds = %30
  %61 = load %struct.hesiod_p*, %struct.hesiod_p** %8, align 8
  %62 = getelementptr inbounds %struct.hesiod_p, %struct.hesiod_p* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %14, align 8
  br label %64

64:                                               ; preds = %60, %59
  %65 = call i32 @strlen(i8* %22)
  %66 = add nsw i32 %65, 1
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = add nsw i32 %66, %68
  store i32 %69, i32* %15, align 4
  %70 = load %struct.hesiod_p*, %struct.hesiod_p** %8, align 8
  %71 = getelementptr inbounds %struct.hesiod_p, %struct.hesiod_p* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %91

74:                                               ; preds = %64
  %75 = load %struct.hesiod_p*, %struct.hesiod_p** %8, align 8
  %76 = getelementptr inbounds %struct.hesiod_p, %struct.hesiod_p* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = load %struct.hesiod_p*, %struct.hesiod_p** %8, align 8
  %80 = getelementptr inbounds %struct.hesiod_p, %struct.hesiod_p* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 46
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  %88 = add nsw i32 %78, %87
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %74, %64
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = load i8*, i8** %14, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 46
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  %101 = add nsw i32 %93, %100
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = sub i64 %20, 1
  %107 = icmp ugt i64 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %91
  %109 = load i8**, i8*** %13, align 8
  %110 = icmp ne i8** %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i8*, i8** %5, align 8
  %113 = load i8**, i8*** %13, align 8
  %114 = call i32 @hesiod_free_list(i8* %112, i8** %113)
  br label %115

115:                                              ; preds = %111, %108
  %116 = load i32, i32* @EMSGSIZE, align 4
  store i32 %116, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  store i32 1, i32* %16, align 4
  br label %173

117:                                              ; preds = %91
  %118 = call i32 @strcat(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i8*, i8** %7, align 8
  %120 = call i32 @strcat(i8* %22, i8* %119)
  %121 = load %struct.hesiod_p*, %struct.hesiod_p** %8, align 8
  %122 = getelementptr inbounds %struct.hesiod_p, %struct.hesiod_p* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %148

125:                                              ; preds = %117
  %126 = load %struct.hesiod_p*, %struct.hesiod_p** %8, align 8
  %127 = getelementptr inbounds %struct.hesiod_p, %struct.hesiod_p* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %125
  %134 = load %struct.hesiod_p*, %struct.hesiod_p** %8, align 8
  %135 = getelementptr inbounds %struct.hesiod_p, %struct.hesiod_p* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 46
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = call i32 @strcat(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %133
  %144 = load %struct.hesiod_p*, %struct.hesiod_p** %8, align 8
  %145 = getelementptr inbounds %struct.hesiod_p, %struct.hesiod_p* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @strcat(i8* %22, i8* %146)
  br label %148

148:                                              ; preds = %143, %125, %117
  %149 = load i8*, i8** %14, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 46
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = call i32 @strcat(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %148
  %157 = load i8*, i8** %14, align 8
  %158 = call i32 @strcat(i8* %22, i8* %157)
  %159 = load i8**, i8*** %13, align 8
  %160 = icmp ne i8** %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load i8*, i8** %5, align 8
  %163 = load i8**, i8*** %13, align 8
  %164 = call i32 @hesiod_free_list(i8* %162, i8** %163)
  br label %165

165:                                              ; preds = %161, %156
  %166 = call i8* @strdup(i8* %22)
  store i8* %166, i8** %12, align 8
  %167 = load i8*, i8** %12, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* @ENOMEM, align 4
  store i32 %170, i32* @errno, align 4
  br label %171

171:                                              ; preds = %169, %165
  %172 = load i8*, i8** %12, align 8
  store i8* %172, i8** %4, align 8
  store i32 1, i32* %16, align 4
  br label %173

173:                                              ; preds = %171, %115, %56, %28
  %174 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %174)
  %175 = load i8*, i8** %4, align 8
  ret i8* %175
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i8** @hesiod_resolve(i8*, i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @hesiod_free_list(i8*, i8**) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i8* @strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
