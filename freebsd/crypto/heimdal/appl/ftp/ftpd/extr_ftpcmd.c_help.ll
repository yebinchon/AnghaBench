; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpcmd.c_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpcmd.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tab = type { i8*, i32, i64 }

@sitetab = common dso_local global %struct.tab* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"SITE \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"The following %scommands are recognized %s.\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"(* =>'s unimplemented)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Direct comments to kth-krb-bugs@pdc.kth.se\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Unknown command %s.\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Syntax: %s%s %s\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"%s%-*s\09%s; unimplemented.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tab*, i8*)* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help(%struct.tab* %0, i8* %1) #0 {
  %3 = alloca %struct.tab*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tab*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.tab* %0, %struct.tab** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load %struct.tab*, %struct.tab** %3, align 8
  %17 = load %struct.tab*, %struct.tab** @sitetab, align 8
  %18 = icmp eq %struct.tab* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %21

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %21

21:                                               ; preds = %20, %19
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %22 = load %struct.tab*, %struct.tab** %3, align 8
  store %struct.tab* %22, %struct.tab** %5, align 8
  br label %23

23:                                               ; preds = %41, %21
  %24 = load %struct.tab*, %struct.tab** %5, align 8
  %25 = getelementptr inbounds %struct.tab, %struct.tab* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.tab*, %struct.tab** %5, align 8
  %30 = getelementptr inbounds %struct.tab, %struct.tab* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strlen(i8* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %28
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %38
  %42 = load %struct.tab*, %struct.tab** %5, align 8
  %43 = getelementptr inbounds %struct.tab, %struct.tab* %42, i32 1
  store %struct.tab* %43, %struct.tab** %5, align 8
  br label %23

44:                                               ; preds = %23
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 8
  %47 = and i32 %46, -8
  store i32 %47, i32* %6, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %144

50:                                               ; preds = %44
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 (i32, i8*, i8*, ...) @lreply(i32 214, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* %6, align 4
  %54 = sdiv i32 76, %53
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 1, i32* %14, align 4
  br label %58

58:                                               ; preds = %57, %50
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %59, %60
  %62 = sub nsw i32 %61, 1
  %63 = load i32, i32* %14, align 4
  %64 = sdiv i32 %62, %63
  store i32 %64, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %139, %58
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %142

69:                                               ; preds = %65
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %71 = call i32 @strlcpy(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 1024)
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %133, %69
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %136

76:                                               ; preds = %72
  %77 = load %struct.tab*, %struct.tab** %3, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %15, align 4
  %80 = mul nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.tab, %struct.tab* %77, i64 %81
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.tab, %struct.tab* %82, i64 %84
  store %struct.tab* %85, %struct.tab** %5, align 8
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %88 = call i32 @strlen(i8* %87)
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %92 = call i32 @strlen(i8* %91)
  %93 = sext i32 %92 to i64
  %94 = sub i64 1024, %93
  %95 = trunc i64 %94 to i32
  %96 = load %struct.tab*, %struct.tab** %5, align 8
  %97 = getelementptr inbounds %struct.tab, %struct.tab* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.tab*, %struct.tab** %5, align 8
  %100 = getelementptr inbounds %struct.tab, %struct.tab* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 32, i32 42
  %105 = trunc i32 %104 to i8
  %106 = call i32 @snprintf(i8* %90, i32 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %98, i8 signext %105)
  %107 = load %struct.tab*, %struct.tab** %5, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.tab, %struct.tab* %107, i64 %109
  %111 = load %struct.tab*, %struct.tab** %3, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.tab, %struct.tab* %111, i64 %113
  %115 = icmp uge %struct.tab* %110, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %76
  br label %136

117:                                              ; preds = %76
  %118 = load %struct.tab*, %struct.tab** %5, align 8
  %119 = getelementptr inbounds %struct.tab, %struct.tab* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @strlen(i8* %120)
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %127, %117
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %129 = call i32 @strlcat(i8* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1024)
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  br label %123

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %72

136:                                              ; preds = %116, %72
  %137 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %138 = call i32 (i32, i8*, i8*, ...) @lreply(i32 214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %65

142:                                              ; preds = %65
  %143 = call i32 (i32, i8*, ...) @reply(i32 214, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  br label %179

144:                                              ; preds = %44
  %145 = load i8*, i8** %4, align 8
  %146 = call i32 @strupr(i8* %145)
  %147 = load %struct.tab*, %struct.tab** %3, align 8
  %148 = load i8*, i8** %4, align 8
  %149 = call %struct.tab* @lookup(%struct.tab* %147, i8* %148)
  store %struct.tab* %149, %struct.tab** %5, align 8
  %150 = load %struct.tab*, %struct.tab** %5, align 8
  %151 = icmp eq %struct.tab* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %144
  %153 = load i8*, i8** %4, align 8
  %154 = call i32 (i32, i8*, ...) @reply(i32 502, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %153)
  br label %179

155:                                              ; preds = %144
  %156 = load %struct.tab*, %struct.tab** %5, align 8
  %157 = getelementptr inbounds %struct.tab, %struct.tab* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %155
  %161 = load i8*, i8** %8, align 8
  %162 = load %struct.tab*, %struct.tab** %5, align 8
  %163 = getelementptr inbounds %struct.tab, %struct.tab* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.tab*, %struct.tab** %5, align 8
  %166 = getelementptr inbounds %struct.tab, %struct.tab* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (i32, i8*, ...) @reply(i32 214, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %161, i8* %164, i32 %167)
  br label %179

169:                                              ; preds = %155
  %170 = load i8*, i8** %8, align 8
  %171 = load i32, i32* %6, align 4
  %172 = load %struct.tab*, %struct.tab** %5, align 8
  %173 = getelementptr inbounds %struct.tab, %struct.tab* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = load %struct.tab*, %struct.tab** %5, align 8
  %176 = getelementptr inbounds %struct.tab, %struct.tab* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (i32, i8*, ...) @reply(i32 214, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* %170, i32 %171, i8* %174, i32 %177)
  br label %179

179:                                              ; preds = %142, %152, %169, %160
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lreply(i32, i8*, i8*, ...) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8 signext) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @reply(i32, i8*, ...) #1

declare dso_local i32 @strupr(i8*) #1

declare dso_local %struct.tab* @lookup(%struct.tab*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
