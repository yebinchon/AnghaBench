; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_getopt.c_ntp_getopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_getopt.c_ntp_getopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prog = common dso_local global i8* null, align 8
@ntp_optarg = common dso_local global i8* null, align 8
@ntp_optind = common dso_local global i32 0, align 4
@scan = common dso_local global i8* null, align 8
@EOF = common dso_local global i32 0, align 4
@ntp_optopt = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [19 x i8] c": unknown option -\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c": option requires argument -\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntp_getopt(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8**, i8*** %6, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** @prog, align 8
  store i8* null, i8** @ntp_optarg, align 8
  %13 = load i32, i32* @ntp_optind, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  store i8* null, i8** @scan, align 8
  %16 = load i32, i32* @ntp_optind, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @ntp_optind, align 4
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i8*, i8** @scan, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** @scan, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %84

26:                                               ; preds = %21, %18
  %27 = load i32, i32* @ntp_optind, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %50, label %30

30:                                               ; preds = %26
  %31 = load i8**, i8*** %6, align 8
  %32 = load i32, i32* @ntp_optind, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 45
  br i1 %39, label %50, label %40

40:                                               ; preds = %30
  %41 = load i8**, i8*** %6, align 8
  %42 = load i32, i32* @ntp_optind, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40, %30, %26
  %51 = load i32, i32* @EOF, align 4
  store i32 %51, i32* %4, align 4
  br label %168

52:                                               ; preds = %40
  %53 = load i8**, i8*** %6, align 8
  %54 = load i32, i32* @ntp_optind, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 45
  br i1 %61, label %62, label %76

62:                                               ; preds = %52
  %63 = load i8**, i8*** %6, align 8
  %64 = load i32, i32* @ntp_optind, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load i32, i32* @ntp_optind, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @ntp_optind, align 4
  %75 = load i32, i32* @EOF, align 4
  store i32 %75, i32* %4, align 4
  br label %168

76:                                               ; preds = %62, %52
  %77 = load i8**, i8*** %6, align 8
  %78 = load i32, i32* @ntp_optind, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @ntp_optind, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8*, i8** %77, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  store i8* %83, i8** @scan, align 8
  br label %84

84:                                               ; preds = %76, %21
  %85 = load i8*, i8** @scan, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** @scan, align 8
  %87 = load i8, i8* %85, align 1
  store i8 %87, i8* %8, align 1
  %88 = load i8, i8* %8, align 1
  %89 = sext i8 %88 to i32
  %90 = and i32 %89, 255
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* @ntp_optopt, align 1
  %92 = load i8*, i8** %7, align 8
  store i8* %92, i8** %9, align 8
  br label %93

93:                                               ; preds = %112, %84
  %94 = load i8*, i8** %9, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br label %101

101:                                              ; preds = %96, %93
  %102 = phi i1 [ false, %93 ], [ %100, %96 ]
  br i1 %102, label %103, label %115

103:                                              ; preds = %101
  %104 = load i8*, i8** %9, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = load i8, i8* %8, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %115

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111
  %113 = load i8*, i8** %9, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %9, align 8
  br label %93

115:                                              ; preds = %110, %101
  %116 = load i8*, i8** %9, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %131, label %118

118:                                              ; preds = %115
  %119 = load i8*, i8** %9, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %118
  %124 = load i8, i8* %8, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 58
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i8, i8* %8, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 63
  br i1 %130, label %131, label %134

131:                                              ; preds = %127, %123, %118, %115
  %132 = load i8, i8* %8, align 1
  %133 = call i32 @badopt(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8 signext %132)
  store i32 %133, i32* %4, align 4
  br label %168

134:                                              ; preds = %127
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %9, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 58
  br i1 %140, label %141, label %164

141:                                              ; preds = %134
  %142 = load i8*, i8** @scan, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i8*, i8** @scan, align 8
  store i8* %147, i8** @ntp_optarg, align 8
  store i8* null, i8** @scan, align 8
  br label %163

148:                                              ; preds = %141
  %149 = load i32, i32* @ntp_optind, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp sge i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i8, i8* %8, align 1
  %154 = call i32 @badopt(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8 signext %153)
  store i32 %154, i32* %4, align 4
  br label %168

155:                                              ; preds = %148
  %156 = load i8**, i8*** %6, align 8
  %157 = load i32, i32* @ntp_optind, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* @ntp_optind, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8*, i8** %156, i64 %159
  %161 = load i8*, i8** %160, align 8
  store i8* %161, i8** @ntp_optarg, align 8
  br label %162

162:                                              ; preds = %155
  br label %163

163:                                              ; preds = %162, %146
  br label %164

164:                                              ; preds = %163, %134
  %165 = load i8, i8* %8, align 1
  %166 = sext i8 %165 to i32
  %167 = and i32 %166, 255
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %164, %152, %131, %72, %50
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @badopt(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
