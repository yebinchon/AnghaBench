; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifbridge.c_bridge_interfaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifbridge.c_bridge_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifbifconf = type { i32, i8*, %struct.ifbreq* }
%struct.ifbreq = type { i32, i32, i32, i32, i32, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"unable to allocate interface buffer\00", align 1
@BRDGGIFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"unable to get interface list\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s%s \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@IFBIFBITS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"ifmaxaddr %u\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c" port %u priority %u\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c" path cost %u\00", align 1
@IFBIF_STP = common dso_local global i32 0, align 4
@stpproto = common dso_local global i8** null, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c" proto %s\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c" <unknown proto %d>\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@stproles = common dso_local global i8** null, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"role %s\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"<unknown role %d>\00", align 1
@stpstates = common dso_local global i8** null, align 8
@.str.15 = private unnamed_addr constant [10 x i8] c" state %s\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c" <unknown state %d>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @bridge_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_interfaces(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ifbifconf, align 8
  %6 = alloca %struct.ifbreq*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %7, align 8
  store i32 8192, i32* %12, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @strdup(i8* %13)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i8*, i8** %10, align 8
  store i8* %20, i8** %9, align 8
  br label %21

21:                                               ; preds = %34, %19
  %22 = load i8*, i8** %9, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i8*, i8** %9, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @isprint(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i8*, i8** %9, align 8
  store i8 32, i8* %32, align 1
  br label %33

33:                                               ; preds = %31, %26
  br label %34

34:                                               ; preds = %33
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %9, align 8
  br label %21

37:                                               ; preds = %21
  br label %38

38:                                               ; preds = %66, %37
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i8* @realloc(i8* %39, i32 %40)
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 @err(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %38
  %47 = load i32, i32* %12, align 4
  %48 = getelementptr inbounds %struct.ifbifconf, %struct.ifbifconf* %5, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load i8*, i8** %8, align 8
  store i8* %49, i8** %7, align 8
  %50 = getelementptr inbounds %struct.ifbifconf, %struct.ifbifconf* %5, i32 0, i32 1
  store i8* %49, i8** %50, align 8
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @BRDGGIFS, align 4
  %53 = call i64 @do_cmd(i32 %51, i32 %52, %struct.ifbifconf* %5, i32 24, i32 0)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = call i32 @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %46
  %58 = getelementptr inbounds %struct.ifbifconf, %struct.ifbifconf* %5, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 56
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %69

66:                                               ; preds = %57
  %67 = load i32, i32* %12, align 4
  %68 = mul nsw i32 %67, 2
  store i32 %68, i32* %12, align 4
  br label %38

69:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %183, %69
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ifbifconf, %struct.ifbifconf* %5, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = udiv i64 %75, 56
  %77 = icmp ult i64 %72, %76
  br i1 %77, label %78, label %186

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.ifbifconf, %struct.ifbifconf* %5, i32 0, i32 2
  %80 = load %struct.ifbreq*, %struct.ifbreq** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %80, i64 %82
  store %struct.ifbreq* %83, %struct.ifbreq** %6, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %86 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %84, i32 %87)
  %89 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %90 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @IFBIFBITS, align 4
  %93 = call i32 @printb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %92)
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %95)
  %97 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %98 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %99)
  %101 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %102 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %105 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %103, i32 %106)
  %108 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %109 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %110)
  %112 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %113 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @IFBIF_STP, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %181

118:                                              ; preds = %78
  %119 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %120 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = load i8**, i8*** @stpproto, align 8
  %123 = call i64 @nitems(i8** %122)
  %124 = icmp ult i64 %121, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %118
  %126 = load i8**, i8*** @stpproto, align 8
  %127 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %128 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i8*, i8** %126, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %131)
  br label %138

133:                                              ; preds = %118
  %134 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %135 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i64 %136)
  br label %138

138:                                              ; preds = %133, %125
  %139 = load i8*, i8** %10, align 8
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %139)
  %141 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %142 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = load i8**, i8*** @stproles, align 8
  %145 = call i64 @nitems(i8** %144)
  %146 = icmp ult i64 %143, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %138
  %148 = load i8**, i8*** @stproles, align 8
  %149 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %150 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %149, i32 0, i32 6
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds i8*, i8** %148, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %153)
  br label %160

155:                                              ; preds = %138
  %156 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %157 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i64 %158)
  br label %160

160:                                              ; preds = %155, %147
  %161 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %162 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %161, i32 0, i32 7
  %163 = load i64, i64* %162, align 8
  %164 = load i8**, i8*** @stpstates, align 8
  %165 = call i64 @nitems(i8** %164)
  %166 = icmp ult i64 %163, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %160
  %168 = load i8**, i8*** @stpstates, align 8
  %169 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %170 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %169, i32 0, i32 7
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i8*, i8** %168, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* %173)
  br label %180

175:                                              ; preds = %160
  %176 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %177 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %176, i32 0, i32 7
  %178 = load i64, i64* %177, align 8
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i64 %178)
  br label %180

180:                                              ; preds = %175, %167
  br label %181

181:                                              ; preds = %180, %78
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %11, align 4
  br label %70

186:                                              ; preds = %70
  %187 = load i8*, i8** %10, align 8
  %188 = call i32 @free(i8* %187)
  %189 = load i8*, i8** %7, align 8
  %190 = call i32 @free(i8* %189)
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @isprint(i8 signext) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i64 @do_cmd(i32, i32, %struct.ifbifconf*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @printb(i8*, i32, i32) #1

declare dso_local i64 @nitems(i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
