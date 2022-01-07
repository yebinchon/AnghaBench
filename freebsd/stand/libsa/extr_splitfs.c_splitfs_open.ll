; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_splitfs.c_splitfs_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_splitfs.c_splitfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64, %struct.split_file* }
%struct.split_file = type { i32, i8**, i8** }
%struct.stat = type { i32 }

@F_READ = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c".split\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s.split\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"splitfs_open: stat failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"splitfs_open: not a file\0A\00", align 1
@EISDIR = common dso_local global i32 0, align 4
@CONF_BUF = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.open_file*)* @splitfs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @splitfs_open(i8* %0, %struct.open_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.split_file*, align 8
  %11 = alloca %struct.stat, align 4
  store i8* %0, i8** %4, align 8
  store %struct.open_file* %1, %struct.open_file** %5, align 8
  %12 = load %struct.open_file*, %struct.open_file** %5, align 8
  %13 = getelementptr inbounds %struct.open_file, %struct.open_file* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @F_READ, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EPERM, align 4
  store i32 %18, i32* %3, align 4
  br label %206

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @strrchr(i8* %20, i8 signext 46)
  store i8* %21, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENOENT, align 4
  store i32 %28, i32* %3, align 4
  br label %206

29:                                               ; preds = %23, %19
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = add nsw i32 %31, 7
  %33 = call i8* @malloc(i32 %32)
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @O_RDONLY, align 4
  %39 = call i32 @open(i8* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i32, i32* @ENOENT, align 4
  store i32 %45, i32* %3, align 4
  br label %206

46:                                               ; preds = %29
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @fstat(i32 %47, %struct.stat* %11)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @close(i32 %52)
  %54 = load i32, i32* @ENOENT, align 4
  store i32 %54, i32* %3, align 4
  br label %206

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @S_ISREG(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @close(i32 %62)
  %64 = load i32, i32* @EISDIR, align 4
  store i32 %64, i32* %3, align 4
  br label %206

65:                                               ; preds = %55
  %66 = call i8* @malloc(i32 24)
  %67 = bitcast i8* %66 to %struct.split_file*
  store %struct.split_file* %67, %struct.split_file** %10, align 8
  %68 = load %struct.split_file*, %struct.split_file** %10, align 8
  %69 = call i32 @bzero(%struct.split_file* %68, i32 24)
  %70 = load i32, i32* @CONF_BUF, align 4
  %71 = call i8* @malloc(i32 %70)
  store i8* %71, i8** %6, align 8
  br label %72

72:                                               ; preds = %127, %65
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* @CONF_BUF, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i64 @fgetstr(i8* %73, i32 %74, i32 %75)
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %180

78:                                               ; preds = %72
  %79 = load i8*, i8** %6, align 8
  store i8* %79, i8** %8, align 8
  br label %80

80:                                               ; preds = %92, %78
  %81 = load i8*, i8** %8, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i8*, i8** %8, align 8
  %87 = load i8, i8* %86, align 1
  %88 = call i64 @isspace(i8 signext %87)
  %89 = icmp eq i64 %88, 0
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i1 [ false, %80 ], [ %89, %85 ]
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %8, align 8
  br label %80

95:                                               ; preds = %90
  %96 = load i8*, i8** %8, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i8*, i8** %8, align 8
  store i8 0, i8* %101, align 1
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %8, align 8
  br label %104

104:                                              ; preds = %100, %95
  br label %105

105:                                              ; preds = %117, %104
  %106 = load i8*, i8** %8, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i8*, i8** %8, align 8
  %112 = load i8, i8* %111, align 1
  %113 = call i64 @isspace(i8 signext %112)
  %114 = icmp ne i64 %113, 0
  br label %115

115:                                              ; preds = %110, %105
  %116 = phi i1 [ false, %105 ], [ %114, %110 ]
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %8, align 8
  br label %105

120:                                              ; preds = %115
  %121 = load i8*, i8** %8, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i8*, i8** %6, align 8
  store i8* %126, i8** %8, align 8
  br label %127

127:                                              ; preds = %125, %120
  %128 = load %struct.split_file*, %struct.split_file** %10, align 8
  %129 = getelementptr inbounds %struct.split_file, %struct.split_file* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  %132 = load %struct.split_file*, %struct.split_file** %10, align 8
  %133 = getelementptr inbounds %struct.split_file, %struct.split_file* %132, i32 0, i32 2
  %134 = load i8**, i8*** %133, align 8
  %135 = load %struct.split_file*, %struct.split_file** %10, align 8
  %136 = getelementptr inbounds %struct.split_file, %struct.split_file* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = mul i64 8, %138
  %140 = trunc i64 %139 to i32
  %141 = call i8* @realloc(i8** %134, i32 %140)
  %142 = bitcast i8* %141 to i8**
  %143 = load %struct.split_file*, %struct.split_file** %10, align 8
  %144 = getelementptr inbounds %struct.split_file, %struct.split_file* %143, i32 0, i32 2
  store i8** %142, i8*** %144, align 8
  %145 = load %struct.split_file*, %struct.split_file** %10, align 8
  %146 = getelementptr inbounds %struct.split_file, %struct.split_file* %145, i32 0, i32 1
  %147 = load i8**, i8*** %146, align 8
  %148 = load %struct.split_file*, %struct.split_file** %10, align 8
  %149 = getelementptr inbounds %struct.split_file, %struct.split_file* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = mul i64 8, %151
  %153 = trunc i64 %152 to i32
  %154 = call i8* @realloc(i8** %147, i32 %153)
  %155 = bitcast i8* %154 to i8**
  %156 = load %struct.split_file*, %struct.split_file** %10, align 8
  %157 = getelementptr inbounds %struct.split_file, %struct.split_file* %156, i32 0, i32 1
  store i8** %155, i8*** %157, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = call i8* @strdup(i8* %158)
  %160 = load %struct.split_file*, %struct.split_file** %10, align 8
  %161 = getelementptr inbounds %struct.split_file, %struct.split_file* %160, i32 0, i32 2
  %162 = load i8**, i8*** %161, align 8
  %163 = load %struct.split_file*, %struct.split_file** %10, align 8
  %164 = getelementptr inbounds %struct.split_file, %struct.split_file* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sub nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %162, i64 %167
  store i8* %159, i8** %168, align 8
  %169 = load i8*, i8** %8, align 8
  %170 = call i8* @strdup(i8* %169)
  %171 = load %struct.split_file*, %struct.split_file** %10, align 8
  %172 = getelementptr inbounds %struct.split_file, %struct.split_file* %171, i32 0, i32 1
  %173 = load i8**, i8*** %172, align 8
  %174 = load %struct.split_file*, %struct.split_file** %10, align 8
  %175 = getelementptr inbounds %struct.split_file, %struct.split_file* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %173, i64 %178
  store i8* %170, i8** %179, align 8
  br label %72

180:                                              ; preds = %72
  %181 = load i8*, i8** %6, align 8
  %182 = call i32 @free(i8* %181)
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @close(i32 %183)
  %185 = load %struct.split_file*, %struct.split_file** %10, align 8
  %186 = getelementptr inbounds %struct.split_file, %struct.split_file* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %180
  %190 = load %struct.split_file*, %struct.split_file** %10, align 8
  %191 = call i32 @split_file_destroy(%struct.split_file* %190)
  %192 = load i32, i32* @ENOENT, align 4
  store i32 %192, i32* %3, align 4
  br label %206

193:                                              ; preds = %180
  %194 = load %struct.split_file*, %struct.split_file** %10, align 8
  %195 = call i64 @split_openfile(%struct.split_file* %194)
  store i64 %195, i64* @errno, align 8
  %196 = load i64, i64* @errno, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load %struct.split_file*, %struct.split_file** %10, align 8
  %200 = call i32 @split_file_destroy(%struct.split_file* %199)
  %201 = load i32, i32* @ENOENT, align 4
  store i32 %201, i32* %3, align 4
  br label %206

202:                                              ; preds = %193
  %203 = load %struct.split_file*, %struct.split_file** %10, align 8
  %204 = load %struct.open_file*, %struct.open_file** %5, align 8
  %205 = getelementptr inbounds %struct.open_file, %struct.open_file* %204, i32 0, i32 1
  store %struct.split_file* %203, %struct.split_file** %205, align 8
  store i32 0, i32* %3, align 4
  br label %206

206:                                              ; preds = %202, %198, %189, %60, %50, %44, %27, %17
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @bzero(%struct.split_file*, i32) #1

declare dso_local i64 @fgetstr(i8*, i32, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @realloc(i8**, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @split_file_destroy(%struct.split_file*) #1

declare dso_local i64 @split_openfile(%struct.split_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
