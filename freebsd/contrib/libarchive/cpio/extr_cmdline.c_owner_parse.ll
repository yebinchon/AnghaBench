; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cmdline.c_owner_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cmdline.c_owner_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32 }
%struct.group = type { i32 }

@owner_parse.errbuff = internal global [128 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [30 x i8] c"Invalid empty user/group spec\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Couldn't allocate memory\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Couldn't lookup user ``%s''\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Couldn't lookup group ``%s''\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @owner_parse(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.passwd*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.group*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32*, i32** %6, align 8
  store i32 -1, i32* %16, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 -1, i32* %17, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %173

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 58
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 46
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %24
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %36, i8** %10, align 8
  br label %69

37:                                               ; preds = %29
  %38 = load i8*, i8** %5, align 8
  store i8* %38, i8** %8, align 8
  store i8* %38, i8** %9, align 8
  br label %39

39:                                               ; preds = %56, %37
  %40 = load i8*, i8** %9, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 58
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 46
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %49, %44, %39
  %55 = phi i1 [ false, %44 ], [ false, %39 ], [ %53, %49 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %9, align 8
  br label %39

59:                                               ; preds = %54
  %60 = load i8*, i8** %9, align 8
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %10, align 8
  br label %68

68:                                               ; preds = %65, %59
  br label %69

69:                                               ; preds = %68, %34
  %70 = load i8*, i8** %8, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %141

72:                                               ; preds = %69
  %73 = load i8*, i8** %9, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = add nsw i64 %77, 1
  %79 = trunc i64 %78 to i32
  %80 = call i64 @malloc(i32 %79)
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** %11, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %173

85:                                               ; preds = %72
  %86 = load i8*, i8** %11, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = call i32 @memcpy(i8* %86, i8* %87, i32 %93)
  %95 = load i8*, i8** %11, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = getelementptr inbounds i8, i8* %95, i64 %100
  store i8 0, i8* %101, align 1
  %102 = load i8*, i8** %11, align 8
  %103 = call %struct.passwd* @getpwnam(i8* %102)
  store %struct.passwd* %103, %struct.passwd** %12, align 8
  %104 = icmp ne %struct.passwd* %103, null
  br i1 %104, label %105, label %120

105:                                              ; preds = %85
  %106 = load %struct.passwd*, %struct.passwd** %12, align 8
  %107 = getelementptr inbounds %struct.passwd, %struct.passwd* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %6, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %105
  %115 = load %struct.passwd*, %struct.passwd** %12, align 8
  %116 = getelementptr inbounds %struct.passwd, %struct.passwd* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %7, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %114, %105
  br label %138

120:                                              ; preds = %85
  store i64 0, i64* @errno, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = call i64 @strtoul(i8* %121, i8** %13, i32 10)
  %123 = trunc i64 %122 to i32
  %124 = load i32*, i32** %6, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i64, i64* @errno, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %120
  %128 = load i8*, i8** %13, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127, %120
  %133 = load i8*, i8** %11, align 8
  %134 = call i32 @snprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @owner_parse.errbuff, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %133)
  store i8 0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @owner_parse.errbuff, i64 0, i64 127), align 1
  %135 = load i8*, i8** %11, align 8
  %136 = call i32 @free(i8* %135)
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @owner_parse.errbuff, i64 0, i64 0), i8** %4, align 8
  br label %173

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %119
  %139 = load i8*, i8** %11, align 8
  %140 = call i32 @free(i8* %139)
  br label %141

141:                                              ; preds = %138, %69
  %142 = load i8*, i8** %10, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %172

146:                                              ; preds = %141
  %147 = load i8*, i8** %10, align 8
  %148 = call %struct.group* @getgrnam(i8* %147)
  store %struct.group* %148, %struct.group** %14, align 8
  %149 = icmp ne %struct.group* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load %struct.group*, %struct.group** %14, align 8
  %152 = getelementptr inbounds %struct.group, %struct.group* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %7, align 8
  store i32 %153, i32* %154, align 4
  br label %171

155:                                              ; preds = %146
  store i64 0, i64* @errno, align 8
  %156 = load i8*, i8** %10, align 8
  %157 = call i64 @strtoul(i8* %156, i8** %15, i32 10)
  %158 = trunc i64 %157 to i32
  %159 = load i32*, i32** %7, align 8
  store i32 %158, i32* %159, align 4
  %160 = load i64, i64* @errno, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %155
  %163 = load i8*, i8** %15, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162, %155
  %168 = load i8*, i8** %10, align 8
  %169 = call i32 @snprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @owner_parse.errbuff, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %168)
  store i8 0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @owner_parse.errbuff, i64 0, i64 127), align 1
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @owner_parse.errbuff, i64 0, i64 0), i8** %4, align 8
  br label %173

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %170, %150
  br label %172

172:                                              ; preds = %171, %141
  store i8* null, i8** %4, align 8
  br label %173

173:                                              ; preds = %172, %167, %132, %84, %23
  %174 = load i8*, i8** %4, align 8
  ret i8* %174
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
