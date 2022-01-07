; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/comsat/extr_comsat.c_jkfprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/comsat/extr_comsat.c_jkfprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"From:\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Subject:\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"...more...%s\00", align 1
@cr = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"M-\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"----%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i32)* @jkfprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jkfprintf(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.passwd*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* @BUFSIZ, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %16, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %17, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call %struct.passwd* @getpwnam(i8* %23)
  store %struct.passwd* %24, %struct.passwd** %15, align 8
  %25 = icmp ne %struct.passwd* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load %struct.passwd*, %struct.passwd** %15, align 8
  %28 = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @setuid(i32 %29)
  br label %31

31:                                               ; preds = %26, %4
  %32 = load i8*, i8** %7, align 8
  %33 = call i32* @fopen(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %33, i32** %11, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %18, align 4
  br label %172

36:                                               ; preds = %31
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @SEEK_CUR, align 4
  %40 = call i32 @fseeko(i32* %37, i32 %38, i32 %39)
  store i32 7, i32* %12, align 4
  store i32 560, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %41

41:                                               ; preds = %160, %71, %54, %36
  %42 = trunc i64 %20 to i32
  %43 = load i32*, i32** %11, align 8
  %44 = call i32* @fgets(i8* %22, i32 %42, i32* %43)
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %166

46:                                               ; preds = %41
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %46
  %50 = getelementptr inbounds i8, i8* %22, i64 0
  %51 = load i8, i8* %50, align 16
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 10
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %14, align 4
  br label %41

55:                                               ; preds = %49
  %56 = getelementptr inbounds i8, i8* %22, i64 0
  %57 = load i8, i8* %56, align 16
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 32
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds i8, i8* %22, i64 0
  %62 = load i8, i8* %61, align 16
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 9
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = call i64 @strncmp(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = call i64 @strncmp(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68, %60, %55
  br label %41

72:                                               ; preds = %68, %65
  br label %73

73:                                               ; preds = %72, %46
  %74 = load i32, i32* %12, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %13, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76, %73
  %80 = load i32*, i32** %5, align 8
  %81 = load i8*, i8** @cr, align 8
  %82 = call i32 @fprintf(i32* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @fclose(i32* %83)
  store i32 1, i32* %18, align 4
  br label %172

85:                                               ; preds = %76
  store i8* %22, i8** %9, align 8
  br label %86

86:                                               ; preds = %155, %85
  %87 = load i8*, i8** %9, align 8
  %88 = load i8, i8* %87, align 1
  store i8 %88, i8* %10, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i8, i8* %10, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp ne i32 %93, 10
  br label %95

95:                                               ; preds = %91, %86
  %96 = phi i1 [ false, %86 ], [ %94, %91 ]
  br i1 %96, label %97, label %160

97:                                               ; preds = %95
  %98 = load i8, i8* %10, align 1
  %99 = zext i8 %98 to i32
  %100 = and i32 %99, 128
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i8, i8* %10, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp slt i32 %104, 160
  br i1 %105, label %127, label %106

106:                                              ; preds = %102, %97
  %107 = load i8, i8* %10, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 %108, 128
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %151, label %111

111:                                              ; preds = %106
  %112 = load i8, i8* %10, align 1
  %113 = call i32 @isprint(i8 zeroext %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %151, label %115

115:                                              ; preds = %111
  %116 = load i8, i8* %10, align 1
  %117 = call i32 @isspace(i8 zeroext %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %151, label %119

119:                                              ; preds = %115
  %120 = load i8, i8* %10, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp ne i32 %121, 7
  br i1 %122, label %123, label %151

123:                                              ; preds = %119
  %124 = load i8, i8* %10, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp ne i32 %125, 8
  br i1 %126, label %127, label %151

127:                                              ; preds = %123, %102
  %128 = load i8, i8* %10, align 1
  %129 = zext i8 %128 to i32
  %130 = and i32 %129, 128
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load i8, i8* %10, align 1
  %134 = zext i8 %133 to i32
  %135 = and i32 %134, -129
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %10, align 1
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %137)
  br label %139

139:                                              ; preds = %132, %127
  %140 = load i8, i8* %10, align 1
  %141 = call i64 @iscntrl(i8 zeroext %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load i8, i8* %10, align 1
  %145 = zext i8 %144 to i32
  %146 = xor i32 %145, 64
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %10, align 1
  %148 = load i32*, i32** %5, align 8
  %149 = call i32 @fputc(i8 zeroext 94, i32* %148)
  br label %150

150:                                              ; preds = %143, %139
  br label %151

151:                                              ; preds = %150, %123, %119, %115, %111, %106
  %152 = load i8, i8* %10, align 1
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @fputc(i8 zeroext %152, i32* %153)
  br label %155

155:                                              ; preds = %151
  %156 = load i8*, i8** %9, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %9, align 8
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %13, align 4
  br label %86

160:                                              ; preds = %95
  %161 = load i8*, i8** @cr, align 8
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @fputs(i8* %161, i32* %162)
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %12, align 4
  br label %41

166:                                              ; preds = %41
  %167 = load i32*, i32** %5, align 8
  %168 = load i8*, i8** @cr, align 8
  %169 = call i32 @fprintf(i32* %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %168)
  %170 = load i32*, i32** %11, align 8
  %171 = call i32 @fclose(i32* %170)
  store i32 0, i32* %18, align 4
  br label %172

172:                                              ; preds = %166, %79, %35
  %173 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load i32, i32* %18, align 4
  switch i32 %174, label %176 [
    i32 0, label %175
    i32 1, label %175
  ]

175:                                              ; preds = %172, %172
  ret void

176:                                              ; preds = %172
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.passwd* @getpwnam(i8*) #2

declare dso_local i32 @setuid(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fseeko(i32*, i32, i32) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @isprint(i8 zeroext) #2

declare dso_local i32 @isspace(i8 zeroext) #2

declare dso_local i32 @fputs(i8*, i32*) #2

declare dso_local i64 @iscntrl(i8 zeroext) #2

declare dso_local i32 @fputc(i8 zeroext, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
