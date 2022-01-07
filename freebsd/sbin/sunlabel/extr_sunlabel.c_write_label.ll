; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sunlabel/extr_sunlabel.c_write_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sunlabel/extr_sunlabel.c_write_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun_disklabel = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.gctl_req = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@SUN_BOOTSIZE = common dso_local global i32 0, align 4
@SUN_SIZE = common dso_local global i32 0, align 4
@SUN_DKMAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"invalid label\00", align 1
@nflag = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@Bflag = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"open %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"read wrong size boot code (%d)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@_PATH_DEV = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"write label\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"SUN\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"write bootcode\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"bootcode\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@SUN_NPART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun_disklabel*, i8*, i8*)* @write_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_label(%struct.sun_disklabel* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.sun_disklabel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.gctl_req*, align 8
  store %struct.sun_disklabel* %0, %struct.sun_disklabel** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i32, i32* @MAXPATHLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load i32, i32* @SUN_BOOTSIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %24 = load i32, i32* @SUN_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %27 = load i32, i32* @SUN_DKMAGIC, align 4
  %28 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %29 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %31 = call i64 @check_label(%struct.sun_disklabel* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %3
  %36 = trunc i64 %25 to i32
  %37 = call i32 @bzero(i8* %26, i32 %36)
  %38 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %39 = call i32 @sunlabel_enc(i8* %26, %struct.sun_disklabel* %38)
  %40 = load i64, i64* @nflag, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @stdout, align 4
  %46 = call i32 @print_label(%struct.sun_disklabel* %43, i8* %44, i32 %45)
  %47 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %47)
  ret void

48:                                               ; preds = %35
  %49 = load i64, i64* @Bflag, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %48
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* @O_RDONLY, align 4
  %54 = call i32 @open(i8* %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %13, align 4
  %61 = trunc i64 %22 to i32
  %62 = call i32 @read(i32 %60, i8* %23, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %75

67:                                               ; preds = %59
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp ne i64 %69, %22
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* %15, align 4
  %73 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %71, %67
  br label %75

75:                                               ; preds = %74, %65
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @close(i32 %76)
  br label %78

78:                                               ; preds = %75, %48
  %79 = trunc i64 %18 to i32
  %80 = load i8*, i8** @_PATH_DEV, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @snprintf(i8* %20, i32 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %80, i8* %81)
  %83 = load i32, i32* @O_RDWR, align 4
  %84 = call i32 @open(i8* %20, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %134

87:                                               ; preds = %78
  %88 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %88, %struct.gctl_req** %16, align 8
  %89 = load %struct.gctl_req*, %struct.gctl_req** %16, align 8
  %90 = call i32 @gctl_ro_param(%struct.gctl_req* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %91 = load %struct.gctl_req*, %struct.gctl_req** %16, align 8
  %92 = call i32 @gctl_ro_param(%struct.gctl_req* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %93 = load %struct.gctl_req*, %struct.gctl_req** %16, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 @gctl_ro_param(%struct.gctl_req* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 -1, i8* %94)
  %96 = load %struct.gctl_req*, %struct.gctl_req** %16, align 8
  %97 = trunc i64 %25 to i32
  %98 = call i32 @gctl_ro_param(%struct.gctl_req* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %97, i8* %26)
  %99 = load %struct.gctl_req*, %struct.gctl_req** %16, align 8
  %100 = call i8* @gctl_issue(%struct.gctl_req* %99)
  store i8* %100, i8** %11, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %87
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %103, %87
  %107 = load %struct.gctl_req*, %struct.gctl_req** %16, align 8
  %108 = call i32 @gctl_free(%struct.gctl_req* %107)
  %109 = load i64, i64* @Bflag, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %133

111:                                              ; preds = %106
  %112 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %112, %struct.gctl_req** %16, align 8
  %113 = load %struct.gctl_req*, %struct.gctl_req** %16, align 8
  %114 = call i32 @gctl_ro_param(%struct.gctl_req* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %115 = load %struct.gctl_req*, %struct.gctl_req** %16, align 8
  %116 = call i32 @gctl_ro_param(%struct.gctl_req* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %117 = load %struct.gctl_req*, %struct.gctl_req** %16, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @gctl_ro_param(%struct.gctl_req* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 -1, i8* %118)
  %120 = load %struct.gctl_req*, %struct.gctl_req** %16, align 8
  %121 = trunc i64 %22 to i32
  %122 = call i32 @gctl_ro_param(%struct.gctl_req* %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %121, i8* %23)
  %123 = load %struct.gctl_req*, %struct.gctl_req** %16, align 8
  %124 = call i8* @gctl_issue(%struct.gctl_req* %123)
  store i8* %124, i8** %11, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %111
  %128 = load i8*, i8** %11, align 8
  %129 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %127, %111
  %131 = load %struct.gctl_req*, %struct.gctl_req** %16, align 8
  %132 = call i32 @gctl_free(%struct.gctl_req* %131)
  br label %133

133:                                              ; preds = %130, %106
  br label %220

134:                                              ; preds = %78
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* @SEEK_SET, align 4
  %137 = call i64 @lseek(i32 %135, i32 0, i32 %136)
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %134
  %142 = load i32, i32* %14, align 4
  %143 = trunc i64 %25 to i32
  %144 = call i32 @write(i32 %142, i8* %26, i32 %143)
  %145 = sext i32 %144 to i64
  %146 = icmp ne i64 %145, %25
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %141
  %150 = load i64, i64* @Bflag, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %217

152:                                              ; preds = %149
  store i32 0, i32* %15, align 4
  br label %153

153:                                              ; preds = %213, %152
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* @SUN_NPART, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %216

157:                                              ; preds = %153
  %158 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %159 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %158, i32 0, i32 2
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = load i32, i32* %15, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %157
  br label %213

168:                                              ; preds = %157
  %169 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %170 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %169, i32 0, i32 2
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %178 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = mul nsw i32 %176, %179
  %181 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %182 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 %180, %183
  %185 = mul nsw i32 %184, 512
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* @SUN_SIZE, align 4
  %189 = add nsw i32 %187, %188
  %190 = load i32, i32* @SEEK_SET, align 4
  %191 = call i64 @lseek(i32 %186, i32 %189, i32 %190)
  %192 = icmp slt i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %168
  %194 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193, %168
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* @SUN_SIZE, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %23, i64 %198
  %200 = load i32, i32* @SUN_SIZE, align 4
  %201 = sext i32 %200 to i64
  %202 = sub i64 %22, %201
  %203 = trunc i64 %202 to i32
  %204 = call i32 @write(i32 %196, i8* %199, i32 %203)
  %205 = sext i32 %204 to i64
  %206 = load i32, i32* @SUN_SIZE, align 4
  %207 = sext i32 %206 to i64
  %208 = sub i64 %22, %207
  %209 = icmp ne i64 %205, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %195
  %211 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210, %195
  br label %213

213:                                              ; preds = %212, %167
  %214 = load i32, i32* %15, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %15, align 4
  br label %153

216:                                              ; preds = %153
  br label %217

217:                                              ; preds = %216, %149
  %218 = load i32, i32* %14, align 4
  %219 = call i32 @close(i32 %218)
  br label %220

220:                                              ; preds = %217, %133
  %221 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @check_label(%struct.sun_disklabel*) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32 @sunlabel_enc(i8*, %struct.sun_disklabel*) #2

declare dso_local i32 @print_label(%struct.sun_disklabel*, i8*, i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local %struct.gctl_req* @gctl_get_handle(...) #2

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, i8*) #2

declare dso_local i8* @gctl_issue(%struct.gctl_req*) #2

declare dso_local i32 @gctl_free(%struct.gctl_req*) #2

declare dso_local i64 @lseek(i32, i32, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
