; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_getit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_getit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"remote-file\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"local-file\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"usage: %s remote-file [local-file]\0A\00", align 1
@code = common dso_local global i32 0, align 4
@mcase = common dso_local global i64 0, align 8
@ntflag = common dso_local global i64 0, align 8
@mapflag = common dso_local global i64 0, align 8
@features = common dso_local global i32* null, align 8
@FEAT_REST_STREAM = common dso_local global i64 0, align 8
@ttyout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Restart is not supported by the remote server.\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Can't stat `%s'\00", align 1
@restart_point = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"RETR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getit(i32 %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.stat, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %21 = load i32, i32* @MAXPATHLEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %15, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %16, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %37

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  %30 = load i8**, i8*** %7, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i8**, i8*** %7, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %27, %4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = call i32 @another(i32* %6, i8*** %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %37
  br label %57

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 3
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = call i32 @another(i32* %6, i8*** %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %6, align 4
  %55 = icmp sgt i32 %54, 3
  br i1 %55, label %56, label %62

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %46
  %58 = load i8**, i8*** %7, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @UPRINTF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  store i32 -1, i32* @code, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %169

62:                                               ; preds = %53
  %63 = load i8**, i8*** %7, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %12, align 8
  %66 = load i8**, i8*** %7, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 2
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @globulize(i8* %68)
  store i8* %69, i8** %13, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 -1, i32* @code, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %169

72:                                               ; preds = %62
  %73 = trunc i64 %22 to i32
  %74 = load i8*, i8** %13, align 8
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i64, i64* @mcase, align 8
  %79 = icmp ne i64 %78, 0
  br label %80

80:                                               ; preds = %77, %72
  %81 = phi i1 [ false, %72 ], [ %79, %77 ]
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i64, i64* @ntflag, align 8
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %85, %80
  %89 = phi i1 [ false, %80 ], [ %87, %85 ]
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i64, i64* @mapflag, align 8
  %95 = icmp ne i64 %94, 0
  br label %96

96:                                               ; preds = %93, %88
  %97 = phi i1 [ false, %88 ], [ %95, %93 ]
  %98 = zext i1 %97 to i32
  %99 = call i8* @doprocess(i8* %24, i32 %73, i8* %74, i32 %82, i32 %90, i32 %98)
  store i8* %99, i8** %14, align 8
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %145

102:                                              ; preds = %96
  %103 = load i32*, i32** @features, align 8
  %104 = load i64, i64* @FEAT_REST_STREAM, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* @ttyout, align 4
  %110 = call i32 @fprintf(i32 %109, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %169

111:                                              ; preds = %102
  %112 = load i8*, i8** %14, align 8
  %113 = call i32 @stat(i8* %112, %struct.stat* %18)
  store i32 %113, i32* %19, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load i32, i32* %19, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i8*, i8** %14, align 8
  %121 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %120)
  br label %165

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* @restart_point, align 8
  br label %144

125:                                              ; preds = %111
  %126 = load i32, i32* %19, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %125
  %129 = load i8**, i8*** %7, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @remotemodtime(i8* %131, i32 0)
  store i32 %132, i32* %20, align 4
  %133 = load i32, i32* %20, align 4
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %165

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %20, align 4
  %140 = icmp sge i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 1, i32* %11, align 4
  br label %165

142:                                              ; preds = %136
  br label %143

143:                                              ; preds = %142, %125
  br label %144

144:                                              ; preds = %143, %122
  br label %145

145:                                              ; preds = %144, %96
  %146 = load i8*, i8** %14, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = load i8*, i8** %9, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = load i8**, i8*** %7, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 1
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %149, %152
  br i1 %153, label %160, label %154

154:                                              ; preds = %145
  %155 = load i8*, i8** %14, align 8
  %156 = load i8**, i8*** %7, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 2
  %158 = load i8*, i8** %157, align 8
  %159 = icmp ne i8* %155, %158
  br label %160

160:                                              ; preds = %154, %145
  %161 = phi i1 [ true, %145 ], [ %159, %154 ]
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @recvrequest(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %146, i8* %147, i8* %148, i32 %162, i32 %163)
  store i64 0, i64* @restart_point, align 8
  br label %165

165:                                              ; preds = %160, %141, %135, %119
  %166 = load i8*, i8** %13, align 8
  %167 = call i32 @free(i8* %166)
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %169

169:                                              ; preds = %165, %108, %71, %57
  %170 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %170)
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @another(i32*, i8***, i8*) #2

declare dso_local i32 @UPRINTF(i8*, i8*) #2

declare dso_local i8* @globulize(i8*) #2

declare dso_local i8* @doprocess(i8*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @remotemodtime(i8*, i32) #2

declare dso_local i32 @recvrequest(i8*, i8*, i8*, i8*, i32, i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
