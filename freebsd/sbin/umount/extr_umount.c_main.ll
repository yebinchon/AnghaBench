; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/umount/extr_umount.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/umount/extr_umount.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32, i32 }
%struct.addrinfo = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"AaF:fh:Nnt:v\00", align 1
@optarg = common dso_local global i8* null, align 8
@MNT_FORCE = common dso_local global i32 0, align 4
@fflag = common dso_local global i32 0, align 4
@nfshost = common dso_local global i8* null, align 8
@MNT_NONBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"only one -t option may be specified\00", align 1
@vflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"-f and -n are mutually exclusive\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@nfshost_ai = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"/dev\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@NFSSVC_FORCEDISM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca %struct.statfs*, align 8
  %15 = alloca %struct.statfs*, align 8
  %16 = alloca %struct.addrinfo, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8** null, i8*** %13, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %51, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %52

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %49 [
    i32 65, label %24
    i32 97, label %25
    i32 70, label %26
    i32 102, label %29
    i32 104, label %33
    i32 78, label %35
    i32 110, label %36
    i32 116, label %40
    i32 118, label %48
  ]

24:                                               ; preds = %22
  store i32 2, i32* %6, align 4
  br label %51

25:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  br label %51

26:                                               ; preds = %22
  %27 = load i8*, i8** @optarg, align 8
  %28 = call i32 @setfstab(i8* %27)
  br label %51

29:                                               ; preds = %22
  %30 = load i32, i32* @MNT_FORCE, align 4
  %31 = load i32, i32* @fflag, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* @fflag, align 4
  br label %51

33:                                               ; preds = %22
  store i32 2, i32* %6, align 4
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** @nfshost, align 8
  br label %51

35:                                               ; preds = %22
  store i32 1, i32* %11, align 4
  br label %51

36:                                               ; preds = %22
  %37 = load i32, i32* @MNT_NONBUSY, align 4
  %38 = load i32, i32* @fflag, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* @fflag, align 4
  br label %51

40:                                               ; preds = %22
  %41 = load i8**, i8*** %13, align 8
  %42 = icmp ne i8** %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i8** @makevfslist(i8* %46)
  store i8** %47, i8*** %13, align 8
  br label %51

48:                                               ; preds = %22
  store i32 1, i32* @vflag, align 4
  br label %51

49:                                               ; preds = %22
  %50 = call i32 (...) @usage()
  br label %51

51:                                               ; preds = %49, %48, %45, %36, %35, %33, %29, %26, %25, %24
  br label %17

52:                                               ; preds = %17
  %53 = load i64, i64* @optind, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %4, align 4
  %58 = load i64, i64* @optind, align 8
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 %58
  store i8** %60, i8*** %5, align 8
  %61 = load i32, i32* @fflag, align 4
  %62 = load i32, i32* @MNT_FORCE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %52
  %66 = load i32, i32* @fflag, align 4
  %67 = load i32, i32* @MNT_NONBUSY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %65, %52
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81, %75
  %85 = call i32 (...) @usage()
  br label %86

86:                                               ; preds = %84, %81, %78
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i32, i32* %4, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  %93 = load i8*, i8** @nfshost, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i8**, i8*** %13, align 8
  %97 = icmp ne i8** %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %95, %92, %89
  %99 = call i32 (...) @usage()
  br label %100

100:                                              ; preds = %98, %95, %86
  %101 = load i8*, i8** @nfshost, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i8**, i8*** %13, align 8
  %105 = icmp eq i8** %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = call i8** @makevfslist(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8** %107, i8*** %13, align 8
  br label %108

108:                                              ; preds = %106, %103, %100
  %109 = load i8*, i8** @nfshost, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = call i32 @memset(%struct.addrinfo* %16, i32 0, i32 4)
  %113 = load i8*, i8** @nfshost, align 8
  %114 = call i32 @getaddrinfo(i8* %113, i32* null, %struct.addrinfo* %16, i32* @nfshost_ai)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load i8*, i8** @nfshost, align 8
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @gai_strerror(i32 %119)
  %121 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %118, i32 %120)
  br label %122

122:                                              ; preds = %117, %111
  br label %123

123:                                              ; preds = %122, %108
  %124 = load i32, i32* %6, align 4
  switch i32 %124, label %216 [
    i32 2, label %125
    i32 1, label %166
    i32 0, label %175
  ]

125:                                              ; preds = %123
  %126 = call i32 @mntinfo(%struct.statfs** %14)
  store i32 %126, i32* %9, align 4
  %127 = icmp sle i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %216

129:                                              ; preds = %125
  store i32 0, i32* %7, align 4
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %160, %129
  %133 = load i32, i32* %9, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %163

135:                                              ; preds = %132
  %136 = load %struct.statfs*, %struct.statfs** %14, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.statfs, %struct.statfs* %136, i64 %138
  store %struct.statfs* %139, %struct.statfs** %15, align 8
  %140 = load %struct.statfs*, %struct.statfs** %15, align 8
  %141 = getelementptr inbounds %struct.statfs, %struct.statfs* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i8**, i8*** %13, align 8
  %144 = call i32 @checkvfsname(i32 %142, i8** %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %135
  br label %160

147:                                              ; preds = %135
  %148 = load %struct.statfs*, %struct.statfs** %15, align 8
  %149 = getelementptr inbounds %struct.statfs, %struct.statfs* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @strcmp(i32 %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %160

154:                                              ; preds = %147
  %155 = load %struct.statfs*, %struct.statfs** %15, align 8
  %156 = call i32 @umountfs(%struct.statfs* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  store i32 1, i32* %7, align 4
  br label %159

159:                                              ; preds = %158, %154
  br label %160

160:                                              ; preds = %159, %153, %146
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %9, align 4
  br label %132

163:                                              ; preds = %132
  %164 = load %struct.statfs*, %struct.statfs** %14, align 8
  %165 = call i32 @free(%struct.statfs* %164)
  br label %216

166:                                              ; preds = %123
  %167 = call i32 (...) @setfsent()
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = call i32 (...) @getfstab()
  %171 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %169, %166
  %173 = load i8**, i8*** %13, align 8
  %174 = call i32 @umountall(i8** %173)
  store i32 %174, i32* %7, align 4
  br label %216

175:                                              ; preds = %123
  store i32 0, i32* %7, align 4
  br label %176

176:                                              ; preds = %212, %175
  %177 = load i8**, i8*** %5, align 8
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %215

180:                                              ; preds = %176
  %181 = load i32, i32* %11, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %203

183:                                              ; preds = %180
  %184 = load i32, i32* @NFSSVC_FORCEDISM, align 4
  %185 = load i8**, i8*** %5, align 8
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @nfssvc(i32 %184, i8* %186)
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp sge i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %183
  %191 = load i8**, i8*** %5, align 8
  %192 = load i8*, i8** %191, align 8
  %193 = load i32, i32* @MNT_FORCE, align 4
  %194 = call i32 @unmount(i8* %192, i32 %193)
  store i32 %194, i32* %12, align 4
  br label %195

195:                                              ; preds = %190, %183
  %196 = load i32, i32* %12, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = load i8**, i8*** %5, align 8
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %200)
  store i32 1, i32* %7, align 4
  br label %202

202:                                              ; preds = %198, %195
  br label %211

203:                                              ; preds = %180
  %204 = load i8**, i8*** %5, align 8
  %205 = load i8*, i8** %204, align 8
  %206 = load i8**, i8*** %13, align 8
  %207 = call i32 @checkname(i8* %205, i8** %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  store i32 1, i32* %7, align 4
  br label %210

210:                                              ; preds = %209, %203
  br label %211

211:                                              ; preds = %210, %202
  br label %212

212:                                              ; preds = %211
  %213 = load i8**, i8*** %5, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i32 1
  store i8** %214, i8*** %5, align 8
  br label %176

215:                                              ; preds = %176
  br label %216

216:                                              ; preds = %123, %215, %172, %163, %128
  %217 = load i32, i32* %7, align 4
  %218 = call i32 @exit(i32 %217) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @setfstab(i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i8** @makevfslist(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, i32*) #1

declare dso_local i32 @errx(i32, i8*, i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @mntinfo(%struct.statfs**) #1

declare dso_local i32 @checkvfsname(i32, i8**) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @umountfs(%struct.statfs*) #1

declare dso_local i32 @free(%struct.statfs*) #1

declare dso_local i32 @setfsent(...) #1

declare dso_local i32 @getfstab(...) #1

declare dso_local i32 @umountall(i8**) #1

declare dso_local i32 @nfssvc(i32, i8*) #1

declare dso_local i32 @unmount(i8*, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @checkname(i8*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
