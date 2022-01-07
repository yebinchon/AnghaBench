; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/extr_modpipe.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/extr_modpipe.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modification = type { i64, i32, i32, i32 }

@MAX_MODIFICATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"wm:\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Too many modifications\00", align 1
@optarg = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"modpipe: warning - mod %u not reached\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [8192 x i32], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* @MAX_MODIFICATIONS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca %struct.modification, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %21

21:                                               ; preds = %44, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %6, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %42 [
    i32 109, label %28
    i32 119, label %41
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* @MAX_MODIFICATIONS, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* @optarg, align 4
  %36 = load i32, i32* %16, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %16, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds %struct.modification, %struct.modification* %20, i64 %38
  %40 = call i32 @parse_modification(i32 %35, %struct.modification* %39)
  br label %44

41:                                               ; preds = %26
  store i32 1, i32* %15, align 4
  br label %44

42:                                               ; preds = %26
  %43 = call i32 (...) @usage()
  br label %44

44:                                               ; preds = %42, %41, %34
  br label %21

45:                                               ; preds = %21
  store i64 0, i64* %8, align 8
  br label %46

46:                                               ; preds = %182, %64, %45
  %47 = load i32, i32* @STDIN_FILENO, align 4
  %48 = getelementptr inbounds [8192 x i32], [8192 x i32]* %7, i64 0, i64 0
  %49 = call i64 @read(i32 %47, i32* %48, i32 32768)
  store i64 %49, i64* %10, align 8
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %186

53:                                               ; preds = %46
  %54 = load i64, i64* %9, align 8
  %55 = icmp ult i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load i64, i64* @errno, align 8
  %58 = load i64, i64* @EAGAIN, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @EINTR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %56
  br label %46

65:                                               ; preds = %60
  %66 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %53
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %145, %67
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %148

72:                                               ; preds = %68
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.modification, %struct.modification* %20, i64 %74
  %76 = getelementptr inbounds %struct.modification, %struct.modification* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %90, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.modification, %struct.modification* %20, i64 %82
  %84 = getelementptr inbounds %struct.modification, %struct.modification* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %10, align 8
  %88 = add i64 %86, %87
  %89 = icmp uge i64 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %80, %72
  br label %145

91:                                               ; preds = %80
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.modification, %struct.modification* %20, i64 %93
  %95 = getelementptr inbounds %struct.modification, %struct.modification* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  switch i32 %96, label %144 [
    i32 128, label %97
    i32 129, label %113
  ]

97:                                               ; preds = %91
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.modification, %struct.modification* %20, i64 %99
  %101 = getelementptr inbounds %struct.modification, %struct.modification* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.modification, %struct.modification* %20, i64 %104
  %106 = getelementptr inbounds %struct.modification, %struct.modification* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %8, align 8
  %109 = sub i64 %107, %108
  %110 = getelementptr inbounds [8192 x i32], [8192 x i32]* %7, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = xor i32 %111, %102
  store i32 %112, i32* %110, align 4
  br label %144

113:                                              ; preds = %91
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.modification, %struct.modification* %20, i64 %115
  %117 = getelementptr inbounds %struct.modification, %struct.modification* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.modification, %struct.modification* %20, i64 %120
  %122 = getelementptr inbounds %struct.modification, %struct.modification* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = sub i64 %123, %124
  %126 = getelementptr inbounds [8192 x i32], [8192 x i32]* %7, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %118
  store i32 %128, i32* %126, align 4
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.modification, %struct.modification* %20, i64 %130
  %132 = getelementptr inbounds %struct.modification, %struct.modification* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.modification, %struct.modification* %20, i64 %135
  %137 = getelementptr inbounds %struct.modification, %struct.modification* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %8, align 8
  %140 = sub i64 %138, %139
  %141 = getelementptr inbounds [8192 x i32], [8192 x i32]* %7, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %133
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %91, %113, %97
  br label %145

145:                                              ; preds = %144, %90
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %14, align 4
  br label %68

148:                                              ; preds = %68
  store i64 0, i64* %11, align 8
  br label %149

149:                                              ; preds = %178, %148
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* %10, align 8
  %152 = icmp ult i64 %150, %151
  br i1 %152, label %153, label %182

153:                                              ; preds = %149
  %154 = load i32, i32* @STDOUT_FILENO, align 4
  %155 = getelementptr inbounds [8192 x i32], [8192 x i32]* %7, i64 0, i64 0
  %156 = load i64, i64* %10, align 8
  %157 = load i64, i64* %11, align 8
  %158 = sub i64 %156, %157
  %159 = call i64 @write(i32 %154, i32* %155, i64 %158)
  store i64 %159, i64* %9, align 8
  %160 = load i64, i64* %9, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %182

163:                                              ; preds = %153
  %164 = load i64, i64* %9, align 8
  %165 = icmp ult i64 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %163
  %167 = load i64, i64* @errno, align 8
  %168 = load i64, i64* @EAGAIN, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load i64, i64* @errno, align 8
  %172 = load i64, i64* @EINTR, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %170, %166
  br label %178

175:                                              ; preds = %170
  %176 = call i32 @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %163
  br label %178

178:                                              ; preds = %177, %174
  %179 = load i64, i64* %9, align 8
  %180 = load i64, i64* %11, align 8
  %181 = add i64 %180, %179
  store i64 %181, i64* %11, align 8
  br label %149

182:                                              ; preds = %162, %149
  %183 = load i64, i64* %10, align 8
  %184 = load i64, i64* %8, align 8
  %185 = add i64 %184, %183
  store i64 %185, i64* %8, align 8
  br label %46

186:                                              ; preds = %52
  store i64 0, i64* %9, align 8
  store i32 0, i32* %14, align 4
  br label %187

187:                                              ; preds = %209, %186
  %188 = load i32, i32* %15, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %16, align 4
  %193 = icmp slt i32 %191, %192
  br label %194

194:                                              ; preds = %190, %187
  %195 = phi i1 [ false, %187 ], [ %193, %190 ]
  br i1 %195, label %196, label %212

196:                                              ; preds = %194
  %197 = load i32, i32* %14, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.modification, %struct.modification* %20, i64 %198
  %200 = getelementptr inbounds %struct.modification, %struct.modification* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %8, align 8
  %203 = icmp ult i64 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %196
  br label %209

205:                                              ; preds = %196
  store i64 1, i64* %9, align 8
  %206 = load i32, i32* @stderr, align 4
  %207 = load i32, i32* %14, align 4
  %208 = call i32 @fprintf(i32 %206, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %207)
  br label %209

209:                                              ; preds = %205, %204
  %210 = load i32, i32* %14, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %14, align 4
  br label %187

212:                                              ; preds = %194
  %213 = load i64, i64* %9, align 8
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %3, align 4
  %215 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %215)
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @parse_modification(i32, %struct.modification*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @read(i32, i32*, i32) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i64 @write(i32, i32*, i64) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
