; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_puffs.c_donewfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_puffs.c_donewfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffstestargs = type { i32, i32*, i32*, i32, i32*, i32, i32 }

@errno = common dso_local global i32 0, align 4
@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@childfail = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"PUFFS_COMFD\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"mp 1 %zd\00", align 1
@MAXPATHLEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"mntpath > MAXPATHLEN\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mp 2\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"fn 1\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"devpath > MAXPATHLEN\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"fn 2\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"mntflags\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"puffstest_args len\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"puffstest_args\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"pflags\00", align 1
@theargs = common dso_local global %struct.puffstestargs* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i8*, i32, i8*, i8**)* @donewfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @donewfs(i32* %0, i8** %1, i8* %2, i32 %3, i8* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.puffstestargs*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca [16 x i8], align 16
  %18 = alloca [2 x i32], align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8** %5, i8*** %13, align 8
  %22 = load i8**, i8*** %9, align 8
  store i8* null, i8** %22, align 8
  %23 = call i8* @malloc(i32 48)
  %24 = bitcast i8* %23 to %struct.puffstestargs*
  store %struct.puffstestargs* %24, %struct.puffstestargs** %14, align 8
  %25 = load %struct.puffstestargs*, %struct.puffstestargs** %14, align 8
  %26 = icmp eq %struct.puffstestargs* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @errno, align 4
  store i32 %28, i32* %7, align 4
  br label %203

29:                                               ; preds = %6
  %30 = load %struct.puffstestargs*, %struct.puffstestargs** %14, align 8
  %31 = call i32 @memset(%struct.puffstestargs* %30, i32 0, i32 48)
  %32 = load %struct.puffstestargs*, %struct.puffstestargs** %14, align 8
  %33 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %32, i32 0, i32 0
  store i32* %33, i32** %16, align 8
  %34 = load i32, i32* @PF_LOCAL, align 4
  %35 = load i32, i32* @SOCK_STREAM, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %37 = call i32 @socketpair(i32 %34, i32 %35, i32 0, i32* %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @errno, align 4
  store i32 %40, i32* %7, align 4
  br label %203

41:                                               ; preds = %29
  %42 = load i32, i32* @SIGCHLD, align 4
  %43 = load i32, i32* @childfail, align 4
  %44 = call i32 @signal(i32 %42, i32 %43)
  %45 = call i32 (...) @fork()
  store i32 %45, i32* %15, align 4
  switch i32 %45, label %71 [
    i32 0, label %46
    i32 -1, label %69
  ]

46:                                               ; preds = %41
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @close(i32 %48)
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @snprintf(i8* %50, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %55 = call i32 @setenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %54, i32 1)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* @errno, align 4
  store i32 %58, i32* %7, align 4
  br label %203

59:                                               ; preds = %46
  %60 = load i8**, i8*** %13, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** %13, align 8
  %64 = call i32 @execvp(i8* %62, i8** %63)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @errno, align 4
  store i32 %67, i32* %7, align 4
  br label %203

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %41, %68
  %70 = load i32, i32* @errno, align 4
  store i32 %70, i32* %7, align 4
  br label %203

71:                                               ; preds = %41
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @close(i32 %73)
  br label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, ...) @xread(i32 %77, i64* %20, i64 8)
  store i32 %78, i32* %21, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp ne i64 %79, 8
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %21, align 4
  %83 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %75
  %85 = load i64, i64* %20, align 8
  %86 = load i64, i64* @MAXPATHLEN, align 8
  %87 = icmp ugt i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %84
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.puffstestargs*, %struct.puffstestargs** %14, align 8
  %94 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* %20, align 8
  %97 = call i32 (i32, ...) @xread(i32 %92, i32* %95, i64 %96)
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %20, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %90
  %102 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %90
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, ...) @xread(i32 %105, i64* %20, i64 8)
  %107 = sext i32 %106 to i64
  %108 = icmp ne i64 %107, 8
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %103
  %112 = load i64, i64* %20, align 8
  %113 = load i64, i64* @MAXPATHLEN, align 8
  %114 = icmp ugt i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %111
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.puffstestargs*, %struct.puffstestargs** %14, align 8
  %121 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* %20, align 8
  %124 = call i32 (i32, ...) @xread(i32 %119, i32* %122, i64 %123)
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %20, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %117
  %129 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %117
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32, ...) @xread(i32 %132, i32* %19, i64 4)
  %134 = sext i32 %133 to i64
  %135 = icmp ne i64 %134, 4
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %130
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.puffstestargs*, %struct.puffstestargs** %14, align 8
  %142 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %141, i32 0, i32 3
  %143 = call i32 (i32, ...) @xread(i32 %140, i32* %142, i64 4)
  %144 = sext i32 %143 to i64
  %145 = icmp ne i64 %144, 4
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %138
  %149 = load %struct.puffstestargs*, %struct.puffstestargs** %14, align 8
  %150 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = call i8* @malloc(i32 %151)
  %153 = bitcast i8* %152 to i32*
  %154 = load %struct.puffstestargs*, %struct.puffstestargs** %14, align 8
  %155 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %154, i32 0, i32 4
  store i32* %153, i32** %155, align 8
  %156 = load %struct.puffstestargs*, %struct.puffstestargs** %14, align 8
  %157 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %148
  %161 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %148
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.puffstestargs*, %struct.puffstestargs** %14, align 8
  %166 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %165, i32 0, i32 4
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.puffstestargs*, %struct.puffstestargs** %14, align 8
  %169 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = call i32 (i32, ...) @xread(i32 %164, i32* %167, i32 %170)
  %172 = load %struct.puffstestargs*, %struct.puffstestargs** %14, align 8
  %173 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %171, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %162
  %177 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %162
  %179 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %16, align 8
  %182 = call i32 (i32, ...) @xread(i32 %180, i32* %181, i64 4)
  %183 = sext i32 %182 to i64
  %184 = icmp ne i64 %183, 4
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %178
  %188 = load i32, i32* %15, align 4
  %189 = load %struct.puffstestargs*, %struct.puffstestargs** %14, align 8
  %190 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 4
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.puffstestargs*, %struct.puffstestargs** %14, align 8
  %194 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %193, i32 0, i32 5
  store i32 %192, i32* %194, align 8
  %195 = load %struct.puffstestargs*, %struct.puffstestargs** %14, align 8
  %196 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load i8*, i8** %10, align 8
  %199 = call i32 @strlcpy(i32* %197, i8* %198, i32 8)
  %200 = load %struct.puffstestargs*, %struct.puffstestargs** %14, align 8
  store %struct.puffstestargs* %200, %struct.puffstestargs** @theargs, align 8
  %201 = bitcast %struct.puffstestargs* %200 to i8*
  %202 = load i8**, i8*** %9, align 8
  store i8* %201, i8** %202, align 8
  store i32 0, i32* %7, align 4
  br label %203

203:                                              ; preds = %187, %69, %66, %57, %39, %27
  %204 = load i32, i32* %7, align 4
  ret i32 %204
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(%struct.puffstestargs*, i32, i32) #1

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @xread(i32, ...) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @strlcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
