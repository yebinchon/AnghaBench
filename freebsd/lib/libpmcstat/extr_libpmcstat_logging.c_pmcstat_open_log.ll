; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_logging.c_pmcstat_open_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_logging.c_pmcstat_open_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@PMCSTAT_OPEN_FOR_READ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ERROR: Cannot open \22%s\22 for %s: %s.\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"reading\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"writing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmcstat_open_log(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %14, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %15, align 8
  store i8* null, i8** %10, align 8
  store i32 -1, i32* %6, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 45
  br i1 %24, label %25, label %37

25:                                               ; preds = %2
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @PMCSTAT_OPEN_FOR_READ, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 1
  store i32 %36, i32* %6, align 4
  br label %198

37:                                               ; preds = %25, %2
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 47
  br i1 %42, label %43, label %169

43:                                               ; preds = %37
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 46
  br i1 %48, label %49, label %169

49:                                               ; preds = %43
  %50 = load i8*, i8** %3, align 8
  %51 = call i32* @strchr(i8* %50, i8 signext 58)
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %169

53:                                               ; preds = %49
  %54 = load i8*, i8** %3, align 8
  %55 = call i8* @strrchr(i8* %54, i8 signext 58)
  store i8* %55, i8** %9, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  store i64 %60, i64* %8, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %53
  %65 = load i64, i64* %8, align 8
  %66 = icmp uge i64 %65, %17
  br i1 %66, label %67, label %70

67:                                               ; preds = %64, %53
  %68 = load i32, i32* @EINVAL, align 4
  %69 = call i8* @strerror(i32 %68)
  store i8* %69, i8** %10, align 8
  br label %199

70:                                               ; preds = %64
  %71 = load i64, i64* %8, align 8
  %72 = icmp ult i64 %71, %17
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i8*, i8** %3, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @strncpy(i8* %19, i8* %75, i64 %76)
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds i8, i8* %19, i64 %78
  store i8 0, i8* %79, align 1
  %80 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 32)
  %81 = load i32, i32* @AF_UNSPEC, align 4
  %82 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 4
  store i32 %81, i32* %82, align 8
  %83 = load i32, i32* @SOCK_STREAM, align 4
  %84 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 3
  store i32 %83, i32* %84, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = call i32 @getaddrinfo(i8* %19, i8* %86, %struct.addrinfo* %11, %struct.addrinfo** %13)
  store i32 %87, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %70
  %90 = load i32, i32* %5, align 4
  %91 = call i8* @gai_strerror(i32 %90)
  store i8* %91, i8** %10, align 8
  br label %199

92:                                               ; preds = %70
  store i32 -1, i32* %6, align 4
  %93 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  store %struct.addrinfo* %93, %struct.addrinfo** %12, align 8
  br label %94

94:                                               ; preds = %162, %92
  %95 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %96 = icmp ne %struct.addrinfo* %95, null
  br i1 %96, label %97, label %166

97:                                               ; preds = %94
  %98 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %99 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %102 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %105 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @socket(i32 %100, i32 %103, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  %110 = load i32, i32* @errno, align 4
  %111 = call i8* @strerror(i32 %110)
  store i8* %111, i8** %10, align 8
  br label %162

112:                                              ; preds = %97
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @PMCSTAT_OPEN_FOR_READ, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %145

116:                                              ; preds = %112
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %119 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %122 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @bind(i32 %117, i32 %120, i32 %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = load i32, i32* @errno, align 4
  %128 = call i8* @strerror(i32 %127)
  store i8* %128, i8** %10, align 8
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @close(i32 %129)
  store i32 -1, i32* %6, align 4
  br label %162

131:                                              ; preds = %116
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @listen(i32 %132, i32 1)
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @accept(i32 %134, i32* null, i32* null)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @close(i32 %136)
  %138 = load i32, i32* %7, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %131
  %141 = load i32, i32* @errno, align 4
  %142 = call i8* @strerror(i32 %141)
  store i8* %142, i8** %10, align 8
  store i32 -1, i32* %6, align 4
  br label %166

143:                                              ; preds = %131
  %144 = load i32, i32* %7, align 4
  store i32 %144, i32* %6, align 4
  br label %161

145:                                              ; preds = %112
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %148 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %151 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @connect(i32 %146, i32 %149, i32 %152)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %145
  %156 = load i32, i32* @errno, align 4
  %157 = call i8* @strerror(i32 %156)
  store i8* %157, i8** %10, align 8
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @close(i32 %158)
  store i32 -1, i32* %6, align 4
  br label %162

160:                                              ; preds = %145
  br label %161

161:                                              ; preds = %160, %143
  store i8* null, i8** %10, align 8
  br label %166

162:                                              ; preds = %155, %126, %109
  %163 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %164 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %163, i32 0, i32 5
  %165 = load %struct.addrinfo*, %struct.addrinfo** %164, align 8
  store %struct.addrinfo* %165, %struct.addrinfo** %12, align 8
  br label %94

166:                                              ; preds = %161, %140, %94
  %167 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %168 = call i32 @freeaddrinfo(%struct.addrinfo* %167)
  br label %197

169:                                              ; preds = %49, %43, %37
  %170 = load i8*, i8** %3, align 8
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* @PMCSTAT_OPEN_FOR_READ, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = load i32, i32* @O_RDONLY, align 4
  br label %182

176:                                              ; preds = %169
  %177 = load i32, i32* @O_WRONLY, align 4
  %178 = load i32, i32* @O_CREAT, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @O_TRUNC, align 4
  %181 = or i32 %179, %180
  br label %182

182:                                              ; preds = %176, %174
  %183 = phi i32 [ %175, %174 ], [ %181, %176 ]
  %184 = load i32, i32* @S_IRUSR, align 4
  %185 = load i32, i32* @S_IWUSR, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @S_IRGRP, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @S_IROTH, align 4
  %190 = or i32 %188, %189
  %191 = call i32 @open(i8* %170, i32 %183, i32 %190)
  store i32 %191, i32* %6, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %182
  %194 = load i32, i32* @errno, align 4
  %195 = call i8* @strerror(i32 %194)
  store i8* %195, i8** %10, align 8
  br label %196

196:                                              ; preds = %193, %182
  br label %197

197:                                              ; preds = %196, %166
  br label %198

198:                                              ; preds = %197, %31
  br label %199

199:                                              ; preds = %198, %89, %67
  %200 = load i8*, i8** %10, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %212

202:                                              ; preds = %199
  %203 = load i32, i32* @EX_OSERR, align 4
  %204 = load i8*, i8** %3, align 8
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* @PMCSTAT_OPEN_FOR_READ, align 4
  %207 = icmp eq i32 %205, %206
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %210 = load i8*, i8** %10, align 8
  %211 = call i32 @errx(i32 %203, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %204, i8* %209, i8* %210)
  br label %212

212:                                              ; preds = %202, %199
  %213 = load i32, i32* %6, align 4
  %214 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %214)
  ret i32 %213
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i8* @gai_strerror(i32) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i64 @bind(i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @listen(i32, i32) #2

declare dso_local i32 @accept(i32, i32*, i32*) #2

declare dso_local i64 @connect(i32, i32, i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @errx(i32, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
