; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_dnsdecode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_dnsdecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXDNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i32*, i8*, i64)* @dnsdecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dnsdecode(i32* %0, i32* %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load i32, i32* @MAXDNAME, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32*, i32** %7, align 8
  store i32* %24, i32** %13, align 8
  %25 = load i8*, i8** %10, align 8
  store i8 0, i8* %25, align 1
  %26 = load i32*, i32** %13, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp uge i32* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  store i32 1, i32* %18, align 4
  br label %166

30:                                               ; preds = %5
  br label %31

31:                                               ; preds = %156, %30
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ult i32* %32, %33
  br i1 %34, label %35, label %157

35:                                               ; preds = %31
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32*, i32** %13, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40, %35
  %45 = load i8*, i8** %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i64 @strlcat(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i64, i64* %11, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i8* null, i8** %6, align 8
  store i32 1, i32* %18, align 4
  br label %166

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %157

56:                                               ; preds = %52
  %57 = load i32*, i32** %13, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %13, align 8
  %59 = load i32, i32* %12, align 4
  %60 = and i32 %59, 192
  %61 = icmp eq i32 %60, 192
  br i1 %61, label %62, label %97

62:                                               ; preds = %56
  %63 = load i32*, i32** %13, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = ptrtoint i32* %63 to i64
  %66 = ptrtoint i32* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 4
  %69 = load i32, i32* %12, align 4
  %70 = and i32 %69, 63
  %71 = sext i32 %70 to i64
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %62
  %74 = load i32*, i32** %9, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  store i8* null, i8** %6, align 8
  store i32 1, i32* %18, align 4
  br label %166

77:                                               ; preds = %73
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %12, align 4
  %80 = and i32 %79, 63
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  store i32* %82, i32** %16, align 8
  %83 = load i32*, i32** %16, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i8* @dnsdecode(i32* %83, i32* %84, i32* %85, i8* %23, i64 %21)
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  store i8* null, i8** %6, align 8
  store i32 1, i32* %18, align 4
  br label %166

89:                                               ; preds = %77
  %90 = load i8*, i8** %10, align 8
  %91 = load i64, i64* %11, align 8
  %92 = call i64 @strlcat(i8* %90, i8* %23, i64 %91)
  %93 = load i64, i64* %11, align 8
  %94 = icmp uge i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i8* null, i8** %6, align 8
  store i32 1, i32* %18, align 4
  br label %166

96:                                               ; preds = %89
  br label %157

97:                                               ; preds = %62, %56
  %98 = load i32, i32* %12, align 4
  %99 = and i32 %98, 63
  %100 = load i32, i32* %12, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %154

102:                                              ; preds = %97
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = load i32*, i32** %8, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = ptrtoint i32* %105 to i64
  %108 = ptrtoint i32* %106 to i64
  %109 = sub i64 %107, %108
  %110 = sdiv exact i64 %109, 4
  %111 = icmp sgt i64 %104, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  store i8* null, i8** %6, align 8
  store i32 1, i32* %18, align 4
  br label %166

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %150, %113
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %12, align 4
  %117 = icmp sgt i32 %115, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32*, i32** %13, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = icmp ult i32* %119, %120
  br label %122

122:                                              ; preds = %118, %114
  %123 = phi i1 [ false, %114 ], [ %121, %118 ]
  br i1 %123, label %124, label %153

124:                                              ; preds = %122
  %125 = trunc i64 %21 to i32
  %126 = load i32*, i32** %13, align 8
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @isprint(i32 %127)
  %129 = icmp ne i64 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %132 = load i32*, i32** %13, align 8
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 255
  %135 = call i32 @snprintf(i8* %23, i32 %125, i8* %131, i32 %134)
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = sext i32 %136 to i64
  %138 = icmp uge i64 %137, %21
  br i1 %138, label %142, label %139

139:                                              ; preds = %124
  %140 = load i32, i32* %17, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139, %124
  store i8* null, i8** %6, align 8
  store i32 1, i32* %18, align 4
  br label %166

143:                                              ; preds = %139
  %144 = load i8*, i8** %10, align 8
  %145 = load i64, i64* %11, align 8
  %146 = call i64 @strlcat(i8* %144, i8* %23, i64 %145)
  %147 = load i64, i64* %11, align 8
  %148 = icmp uge i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  store i8* null, i8** %6, align 8
  store i32 1, i32* %18, align 4
  br label %166

150:                                              ; preds = %143
  %151 = load i32*, i32** %13, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %13, align 8
  br label %114

153:                                              ; preds = %122
  br label %155

154:                                              ; preds = %97
  store i8* null, i8** %6, align 8
  store i32 1, i32* %18, align 4
  br label %166

155:                                              ; preds = %153
  br label %156

156:                                              ; preds = %155
  br label %31

157:                                              ; preds = %96, %55, %31
  %158 = load i32, i32* %12, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i8* null, i8** %6, align 8
  store i32 1, i32* %18, align 4
  br label %166

161:                                              ; preds = %157
  %162 = load i32*, i32** %13, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %13, align 8
  %164 = load i32*, i32** %13, align 8
  %165 = bitcast i32* %164 to i8*
  store i8* %165, i8** %6, align 8
  store i32 1, i32* %18, align 4
  br label %166

166:                                              ; preds = %161, %160, %154, %149, %142, %112, %95, %88, %76, %50, %29
  %167 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i8*, i8** %6, align 8
  ret i8* %168
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlcat(i8*, i8*, i64) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @isprint(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
