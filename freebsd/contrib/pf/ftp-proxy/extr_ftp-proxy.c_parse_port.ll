; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_parse_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_parse_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@linebuf = common dso_local global i8* null, align 8
@linelen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c" %u,%u,%u,%u,%u,%u\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"(%u,%u,%u,%u,%u,%u)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"(|||%u|)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c" |1|%u.%u.%u.%u|%u|\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c" |2|%*[a-fA-F0-9:]|%u|\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_port(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [6 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i8*, i8** @linebuf, align 8
  %9 = load i32, i32* @linelen, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %28, %1
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** @linebuf, align 8
  %15 = icmp ugt i8* %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 40
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %16
  br label %31

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 -1
  store i8* %30, i8** %7, align 8
  br label %12

31:                                               ; preds = %26, %12
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** @linebuf, align 8
  %34 = icmp eq i8* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %178

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  switch i32 %37, label %176 [
    i32 128, label %38
    i32 129, label %81
    i32 130, label %124
    i32 131, label %135
  ]

38:                                               ; preds = %36
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %46 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %40, i32* %41, i32* %42, i32* %43, i32* %44, i32* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 6
  br i1 %48, label %49, label %80

49:                                               ; preds = %38
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %51 = load i32, i32* %50, align 16
  %52 = icmp ult i32 %51, 256
  br i1 %52, label %53, label %80

53:                                               ; preds = %49
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ult i32 %55, 256
  br i1 %56, label %57, label %80

57:                                               ; preds = %53
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ult i32 %59, 256
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp ult i32 %63, 256
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %67 = load i32, i32* %66, align 16
  %68 = icmp ult i32 %67, 256
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %71 = load i32, i32* %70, align 4
  %72 = icmp ult i32 %71, 256
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %75 = load i32, i32* %74, align 16
  %76 = shl i32 %75, 8
  %77 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %76, %78
  store i32 %79, i32* %2, align 4
  br label %178

80:                                               ; preds = %69, %65, %61, %57, %53, %49, %38
  br label %177

81:                                               ; preds = %36
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %84 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %85 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %86 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  %87 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %88 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %89 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %83, i32* %84, i32* %85, i32* %86, i32* %87, i32* %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp eq i32 %90, 6
  br i1 %91, label %92, label %123

92:                                               ; preds = %81
  %93 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %94 = load i32, i32* %93, align 16
  %95 = icmp ult i32 %94, 256
  br i1 %95, label %96, label %123

96:                                               ; preds = %92
  %97 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ult i32 %98, 256
  br i1 %99, label %100, label %123

100:                                              ; preds = %96
  %101 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ult i32 %102, 256
  br i1 %103, label %104, label %123

104:                                              ; preds = %100
  %105 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp ult i32 %106, 256
  br i1 %107, label %108, label %123

108:                                              ; preds = %104
  %109 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %110 = load i32, i32* %109, align 16
  %111 = icmp ult i32 %110, 256
  br i1 %111, label %112, label %123

112:                                              ; preds = %108
  %113 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %114 = load i32, i32* %113, align 4
  %115 = icmp ult i32 %114, 256
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %118 = load i32, i32* %117, align 16
  %119 = shl i32 %118, 8
  %120 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %119, %121
  store i32 %122, i32* %2, align 4
  br label %178

123:                                              ; preds = %112, %108, %104, %100, %96, %92, %81
  br label %177

124:                                              ; preds = %36
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %4)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i32, i32* %4, align 4
  %131 = icmp ult i32 %130, 65536
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i32, i32* %4, align 4
  store i32 %133, i32* %2, align 4
  br label %178

134:                                              ; preds = %129, %124
  br label %177

135:                                              ; preds = %36
  %136 = load i8*, i8** %7, align 8
  %137 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %138 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %139 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %140 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  %141 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %137, i32* %138, i32* %139, i32* %140, i32* %4)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp eq i32 %142, 5
  br i1 %143, label %144, label %165

144:                                              ; preds = %135
  %145 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %146 = load i32, i32* %145, align 16
  %147 = icmp ult i32 %146, 256
  br i1 %147, label %148, label %165

148:                                              ; preds = %144
  %149 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ult i32 %150, 256
  br i1 %151, label %152, label %165

152:                                              ; preds = %148
  %153 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp ult i32 %154, 256
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  %158 = load i32, i32* %157, align 4
  %159 = icmp ult i32 %158, 256
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load i32, i32* %4, align 4
  %162 = icmp ult i32 %161, 65536
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = load i32, i32* %4, align 4
  store i32 %164, i32* %2, align 4
  br label %178

165:                                              ; preds = %160, %156, %152, %148, %144, %135
  %166 = load i8*, i8** %7, align 8
  %167 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %166, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %4)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load i32, i32* %4, align 4
  %172 = icmp ult i32 %171, 65536
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load i32, i32* %4, align 4
  store i32 %174, i32* %2, align 4
  br label %178

175:                                              ; preds = %170, %165
  br label %177

176:                                              ; preds = %36
  store i32 0, i32* %2, align 4
  br label %178

177:                                              ; preds = %175, %134, %123, %80
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %177, %176, %173, %163, %132, %116, %73, %35
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
