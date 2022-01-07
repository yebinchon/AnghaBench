; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_main.c_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_main.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i8*, i32, i64 }

@.str = private unnamed_addr constant [46 x i8] c"Commands may be abbreviated.  Commands are:\0A\0A\00", align 1
@cmdtab = common dso_local global %struct.cmd* null, align 8
@NCMDS = common dso_local global i64 0, align 8
@proxy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"?Ambiguous help command %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"?Invalid help command %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%-*s\09%s\0A\00", align 1
@HELPINDENT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @help(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %138

17:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.cmd*, %struct.cmd** @cmdtab, align 8
  store %struct.cmd* %19, %struct.cmd** %5, align 8
  br label %20

20:                                               ; preds = %37, %17
  %21 = load %struct.cmd*, %struct.cmd** %5, align 8
  %22 = load %struct.cmd*, %struct.cmd** @cmdtab, align 8
  %23 = load i64, i64* @NCMDS, align 8
  %24 = getelementptr inbounds %struct.cmd, %struct.cmd* %22, i64 %23
  %25 = icmp ult %struct.cmd* %21, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load %struct.cmd*, %struct.cmd** %5, align 8
  %28 = getelementptr inbounds %struct.cmd, %struct.cmd* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strlen(i8* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %34, %26
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.cmd*, %struct.cmd** %5, align 8
  %39 = getelementptr inbounds %struct.cmd, %struct.cmd* %38, i32 1
  store %struct.cmd* %39, %struct.cmd** %5, align 8
  br label %20

40:                                               ; preds = %20
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 8
  %43 = and i32 %42, -8
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sdiv i32 80, %44
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 1, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %40
  %50 = load i64, i64* @NCMDS, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %50, %52
  %54 = sub i64 %53, 1
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = udiv i64 %54, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %134, %49
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %137

63:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %130, %63
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %133

68:                                               ; preds = %64
  %69 = load %struct.cmd*, %struct.cmd** @cmdtab, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %12, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.cmd, %struct.cmd* %69, i64 %73
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.cmd, %struct.cmd* %74, i64 %76
  store %struct.cmd* %77, %struct.cmd** %5, align 8
  %78 = load i32, i32* @proxy, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %68
  %81 = load %struct.cmd*, %struct.cmd** %5, align 8
  %82 = getelementptr inbounds %struct.cmd, %struct.cmd* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80, %68
  %86 = load %struct.cmd*, %struct.cmd** %5, align 8
  %87 = getelementptr inbounds %struct.cmd, %struct.cmd* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  br label %104

90:                                               ; preds = %80
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %100, %90
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.cmd*, %struct.cmd** %5, align 8
  %94 = getelementptr inbounds %struct.cmd, %struct.cmd* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = icmp slt i32 %92, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = call i32 @putchar(i8 signext 32)
  br label %100

100:                                              ; preds = %98
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %91

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103, %85
  %105 = load %struct.cmd*, %struct.cmd** %5, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.cmd, %struct.cmd* %105, i64 %107
  %109 = load %struct.cmd*, %struct.cmd** @cmdtab, align 8
  %110 = load i64, i64* @NCMDS, align 8
  %111 = getelementptr inbounds %struct.cmd, %struct.cmd* %109, i64 %110
  %112 = icmp uge %struct.cmd* %108, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %104
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %133

115:                                              ; preds = %104
  %116 = load %struct.cmd*, %struct.cmd** %5, align 8
  %117 = getelementptr inbounds %struct.cmd, %struct.cmd* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @strlen(i8* %118)
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %124, %115
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 8
  %127 = and i32 %126, -8
  store i32 %127, i32* %8, align 4
  %128 = call i32 @putchar(i8 signext 9)
  br label %120

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %64

133:                                              ; preds = %113, %64
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %59

137:                                              ; preds = %59
  br label %171

138:                                              ; preds = %2
  br label %139

139:                                              ; preds = %170, %138
  %140 = load i32, i32* %3, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %3, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %171

143:                                              ; preds = %139
  %144 = load i8**, i8*** %4, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i32 1
  store i8** %145, i8*** %4, align 8
  %146 = load i8*, i8** %145, align 8
  store i8* %146, i8** %14, align 8
  %147 = load i8*, i8** %14, align 8
  %148 = call %struct.cmd* @getcmd(i8* %147)
  store %struct.cmd* %148, %struct.cmd** %5, align 8
  %149 = load %struct.cmd*, %struct.cmd** %5, align 8
  %150 = icmp eq %struct.cmd* %149, inttoptr (i64 -1 to %struct.cmd*)
  br i1 %150, label %151, label %154

151:                                              ; preds = %143
  %152 = load i8*, i8** %14, align 8
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %152)
  br label %170

154:                                              ; preds = %143
  %155 = load %struct.cmd*, %struct.cmd** %5, align 8
  %156 = icmp eq %struct.cmd* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i8*, i8** %14, align 8
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %158)
  br label %169

160:                                              ; preds = %154
  %161 = load i8*, i8** @HELPINDENT, align 8
  %162 = load %struct.cmd*, %struct.cmd** %5, align 8
  %163 = getelementptr inbounds %struct.cmd, %struct.cmd* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.cmd*, %struct.cmd** %5, align 8
  %166 = getelementptr inbounds %struct.cmd, %struct.cmd* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %161, i8* %164, i32 %167)
  br label %169

169:                                              ; preds = %160, %157
  br label %170

170:                                              ; preds = %169, %151
  br label %139

171:                                              ; preds = %137, %139
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local %struct.cmd* @getcmd(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
