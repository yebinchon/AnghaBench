; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/libusb20/extr_control.c_parse_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/libusb20/extr_control.c_parse_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"request direction must be \22in\22 or \22out\22 (got %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"request type must be one of \22standard\22, \22class\22, or \22vendor\22 (got %s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"recipient must be one of \22device\22, \22interface\22, \22endpoint\22, or \22other\22 (got %s)\0A\00", align 1
@setup = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @parse_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_req(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %183, %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 %12, 6
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i1 [ false, %8 ], [ %13, %11 ]
  br i1 %15, label %16, label %188

16:                                               ; preds = %14
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %182 [
    i32 0, label %18
    i32 1, label %50
    i32 2, label %95
    i32 3, label %154
    i32 4, label %161
    i32 5, label %168
    i32 6, label %175
  ]

18:                                               ; preds = %16
  %19 = load i8**, i8*** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 105
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, 128
  store i32 %29, i32* %7, align 4
  br label %49

30:                                               ; preds = %18
  %31 = load i8**, i8*** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 111
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %48

40:                                               ; preds = %30
  %41 = load i32, i32* @stderr, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %46)
  store i32 -1, i32* %3, align 4
  br label %190

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %27
  br label %182

50:                                               ; preds = %16
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 115
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %94

60:                                               ; preds = %50
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 99
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, 32
  store i32 %71, i32* %7, align 4
  br label %93

72:                                               ; preds = %60
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 118
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, 64
  store i32 %83, i32* %7, align 4
  br label %92

84:                                               ; preds = %72
  %85 = load i32, i32* @stderr, align 4
  %86 = load i8**, i8*** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @fprintf(i32 %85, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8* %90)
  store i32 -1, i32* %3, align 4
  br label %190

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92, %69
  br label %94

94:                                               ; preds = %93, %59
  br label %182

95:                                               ; preds = %16
  %96 = load i8**, i8*** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 100
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %152

105:                                              ; preds = %95
  %106 = load i8**, i8*** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 105
  br i1 %113, label %114, label %117

114:                                              ; preds = %105
  %115 = load i32, i32* %7, align 4
  %116 = or i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %151

117:                                              ; preds = %105
  %118 = load i8**, i8*** %5, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 101
  br i1 %125, label %126, label %129

126:                                              ; preds = %117
  %127 = load i32, i32* %7, align 4
  %128 = or i32 %127, 2
  store i32 %128, i32* %7, align 4
  br label %150

129:                                              ; preds = %117
  %130 = load i8**, i8*** %5, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 111
  br i1 %137, label %138, label %141

138:                                              ; preds = %129
  %139 = load i32, i32* %7, align 4
  %140 = or i32 %139, 3
  store i32 %140, i32* %7, align 4
  br label %149

141:                                              ; preds = %129
  %142 = load i32, i32* @stderr, align 4
  %143 = load i8**, i8*** %5, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @fprintf(i32 %142, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i8* %147)
  store i32 -1, i32* %3, align 4
  br label %190

149:                                              ; preds = %138
  br label %150

150:                                              ; preds = %149, %126
  br label %151

151:                                              ; preds = %150, %114
  br label %152

152:                                              ; preds = %151, %104
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @setup, i32 0, i32 0), align 8
  br label %182

154:                                              ; preds = %16
  %155 = load i8**, i8*** %5, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @get_req(i8* %159)
  store i32 %160, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @setup, i32 0, i32 4), align 8
  br label %182

161:                                              ; preds = %16
  %162 = load i8**, i8*** %5, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = call i8* @strtoul(i8* %166, i32 0, i32 0)
  store i8* %167, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @setup, i32 0, i32 3), align 8
  br label %182

168:                                              ; preds = %16
  %169 = load i8**, i8*** %5, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = call i8* @strtoul(i8* %173, i32 0, i32 0)
  store i8* %174, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @setup, i32 0, i32 2), align 8
  br label %182

175:                                              ; preds = %16
  %176 = load i8**, i8*** %5, align 8
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = call i8* @strtoul(i8* %180, i32 0, i32 0)
  store i8* %181, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @setup, i32 0, i32 1), align 8
  br label %182

182:                                              ; preds = %16, %175, %168, %161, %154, %152, %94, %49
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %4, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %4, align 4
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %6, align 4
  br label %8

188:                                              ; preds = %14
  %189 = load i32, i32* %4, align 4
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %188, %141, %84, %40
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @get_req(i8*) #1

declare dso_local i8* @strtoul(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
