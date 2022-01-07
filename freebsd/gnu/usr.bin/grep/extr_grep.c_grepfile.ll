; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_grepfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_grepfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@label = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"(standard input)\00", align 1
@filename = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@directories = common dso_local global i64 0, align 8
@RECURSE_DIRECTORIES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@suppress_errors = common dso_local global i32 0, align 4
@SKIP_DIRECTORIES = common dso_local global i64 0, align 8
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@count_matches = common dso_local global i64 0, align 8
@out_file = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@filename_mask = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@list_files = common dso_local global i32 0, align 4
@BZflag = common dso_local global i64 0, align 8
@bzbufdesc = common dso_local global i64 0, align 8
@outleft = common dso_local global i64 0, align 8
@bufoffset = common dso_local global i64 0, align 8
@after_last_match = common dso_local global i64 0, align 8
@bufmapped = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@Zflag = common dso_local global i64 0, align 8
@gzbufdesc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stats*)* @grepfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grepfile(i8* %0, %struct.stats* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.stats* %1, %struct.stats** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %15 = load i8*, i8** @label, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i8*, i8** @label, align 8
  br label %21

19:                                               ; preds = %14
  %20 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i8* [ %18, %17 ], [ %20, %19 ]
  store i8* %22, i8** @filename, align 8
  br label %100

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %37, %23
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @O_RDONLY, align 4
  %27 = load i32, i32* @O_NONBLOCK, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @open(i8* %25, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @errno, align 4
  %33 = load i32, i32* @EINTR, align 4
  %34 = icmp eq i32 %32, %33
  br label %35

35:                                               ; preds = %31, %24
  %36 = phi i1 [ false, %24 ], [ %34, %31 ]
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  br label %24

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %38
  %42 = load i32, i32* @errno, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = call i64 @is_EISDIR(i32 %43, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %41
  %48 = load i64, i64* @directories, align 8
  %49 = load i64, i64* @RECURSE_DIRECTORIES, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  %53 = load %struct.stats*, %struct.stats** %5, align 8
  %54 = getelementptr inbounds %struct.stats, %struct.stats* %53, i32 0, i32 0
  %55 = call i64 @stat(i8* %52, %struct.TYPE_2__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @errno, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @error(i32 0, i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  store i32 1, i32* %3, align 4
  br label %205

61:                                               ; preds = %51
  %62 = load i8*, i8** %4, align 8
  %63 = load %struct.stats*, %struct.stats** %5, align 8
  %64 = call i32 @grepdir(i8* %62, %struct.stats* %63)
  store i32 %64, i32* %3, align 4
  br label %205

65:                                               ; preds = %47, %41
  %66 = load i32, i32* @suppress_errors, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %65
  %69 = load i64, i64* @directories, align 8
  %70 = load i64, i64* @SKIP_DIRECTORIES, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load i32, i32* %10, align 4
  switch i32 %73, label %81 [
    i32 128, label %74
    i32 129, label %75
  ]

74:                                               ; preds = %72
  store i32 1, i32* %3, align 4
  br label %205

75:                                               ; preds = %72
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @isdir(i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 1, i32* %3, align 4
  br label %205

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %72, %80
  br label %82

82:                                               ; preds = %81, %68
  br label %83

83:                                               ; preds = %82, %65
  %84 = load i8*, i8** %4, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @suppressible_error(i8* %84, i32 %85)
  store i32 1, i32* %3, align 4
  br label %205

87:                                               ; preds = %38
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @F_GETFL, align 4
  %90 = call i32 (i32, i32, ...) @fcntl(i32 %88, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* @O_NONBLOCK, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @F_SETFL, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 (i32, i32, ...) @fcntl(i32 %95, i32 %96, i32 %97)
  %99 = load i8*, i8** %4, align 8
  store i8* %99, i8** @filename, align 8
  br label %100

100:                                              ; preds = %87, %21
  %101 = load i32, i32* %6, align 4
  %102 = load i8*, i8** %4, align 8
  %103 = load %struct.stats*, %struct.stats** %5, align 8
  %104 = call i32 @grep(i32 %101, i8* %102, %struct.stats* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 2
  store i32 %109, i32* %8, align 4
  br label %203

110:                                              ; preds = %100
  %111 = load i64, i64* @count_matches, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %110
  %114 = load i64, i64* @out_file, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i8*, i8** @filename, align 8
  %118 = load i8, i8* @filename_mask, align 1
  %119 = sext i8 %118 to i32
  %120 = and i32 58, %119
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %117, i32 %120)
  br label %122

122:                                              ; preds = %116, %113
  %123 = load i32, i32* %7, align 4
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %122, %110
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* @list_files, align 4
  %131 = load i32, i32* %8, align 4
  %132 = mul nsw i32 2, %131
  %133 = sub nsw i32 1, %132
  %134 = icmp eq i32 %130, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %125
  %136 = load i8*, i8** @filename, align 8
  %137 = load i8, i8* @filename_mask, align 1
  %138 = sext i8 %137 to i32
  %139 = and i32 10, %138
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %136, i32 %139)
  br label %141

141:                                              ; preds = %135, %125
  %142 = load i64, i64* @BZflag, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load i64, i64* @bzbufdesc, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i64, i64* @bzbufdesc, align 8
  %149 = call i32 @BZ2_bzclose(i64 %148)
  br label %202

150:                                              ; preds = %144, %141
  %151 = load i8*, i8** %4, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %186, label %153

153:                                              ; preds = %150
  %154 = load i64, i64* @outleft, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i64, i64* @bufoffset, align 8
  br label %160

158:                                              ; preds = %153
  %159 = load i64, i64* @after_last_match, align 8
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i64 [ %157, %156 ], [ %159, %158 ]
  store i64 %161, i64* %11, align 8
  %162 = load i64, i64* @bufmapped, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = load i64, i64* %11, align 8
  %166 = load i64, i64* @bufoffset, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %185

168:                                              ; preds = %164, %160
  %169 = load i32, i32* %6, align 4
  %170 = load i64, i64* %11, align 8
  %171 = load i32, i32* @SEEK_SET, align 4
  %172 = call i64 @lseek(i32 %169, i64 %170, i32 %171)
  %173 = icmp slt i64 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %168
  %175 = load %struct.stats*, %struct.stats** %5, align 8
  %176 = getelementptr inbounds %struct.stats, %struct.stats* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @S_ISREG(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %174
  %182 = load i32, i32* @errno, align 4
  %183 = load i8*, i8** @filename, align 8
  %184 = call i32 @error(i32 0, i32 %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %183)
  br label %185

185:                                              ; preds = %181, %174, %168, %164
  br label %201

186:                                              ; preds = %150
  br label %187

187:                                              ; preds = %199, %186
  %188 = load i32, i32* %6, align 4
  %189 = call i64 @close(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %187
  %192 = load i32, i32* @errno, align 4
  %193 = load i32, i32* @EINTR, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %191
  %196 = load i32, i32* @errno, align 4
  %197 = load i8*, i8** %4, align 8
  %198 = call i32 @error(i32 0, i32 %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %197)
  br label %200

199:                                              ; preds = %191
  br label %187

200:                                              ; preds = %195, %187
  br label %201

201:                                              ; preds = %200, %185
  br label %202

202:                                              ; preds = %201, %147
  br label %203

203:                                              ; preds = %202, %107
  %204 = load i32, i32* %8, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %203, %83, %79, %74, %61, %57
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @is_EISDIR(i32, i8*) #1

declare dso_local i64 @stat(i8*, %struct.TYPE_2__*) #1

declare dso_local i32 @error(i32, i32, i8*, i8*) #1

declare dso_local i32 @grepdir(i8*, %struct.stats*) #1

declare dso_local i32 @isdir(i8*) #1

declare dso_local i32 @suppressible_error(i8*, i32) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @grep(i32, i8*, %struct.stats*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @BZ2_bzclose(i64) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
