; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_fat.c_clustdiffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_fat.c_clustdiffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLUST_FREE = common dso_local global i64 0, align 8
@CLUST_RSRVD = common dso_local global i64 0, align 8
@CLUST_BAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Cluster %u is marked %s with different indicators\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Fix\00", align 1
@FSFATMOD = common dso_local global i32 0, align 4
@FSFATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Cluster %u is marked %s in FAT 0, %s in FAT %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Use FAT 0's entry\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Use FAT %u's entry\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"Cluster %u is marked %s in FAT 0, but continues with cluster %u in FAT %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Use continuation from FAT %u\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Use mark from FAT 0\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"Cluster %u continues with cluster %u in FAT 0, but is marked %s in FAT %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Use continuation from FAT 0\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Use mark from FAT %d\00", align 1
@FSERROR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [78 x i8] c"Cluster %u continues with cluster %u in FAT 0, but with cluster %u in FAT %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*, i64*, i32)* @clustdiffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clustdiffer(i64 %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i64*, i64** %7, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CLUST_FREE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CLUST_RSRVD, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %129

19:                                               ; preds = %14, %4
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CLUST_FREE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i64*, i64** %8, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CLUST_RSRVD, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %102

29:                                               ; preds = %24, %19
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CLUST_FREE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CLUST_BAD, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i64*, i64** %8, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CLUST_FREE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i64*, i64** %8, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CLUST_BAD, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %44, %39, %34, %29
  %50 = load i64*, i64** %7, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CLUST_BAD, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %49
  %55 = load i64*, i64** %8, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CLUST_BAD, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %54, %44
  %60 = load i64, i64* %6, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @rsrvdcltype(i64 %62)
  %64 = call i32 (i8*, i64, i64, ...) @pwarn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %60, i64 %63)
  %65 = call i64 (i32, i8*, ...) @ask(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load i64*, i64** %7, align 8
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %8, align 8
  store i64 %69, i64* %70, align 8
  %71 = load i32, i32* @FSFATMOD, align 4
  store i32 %71, i32* %5, align 4
  br label %192

72:                                               ; preds = %59
  %73 = load i32, i32* @FSFATAL, align 4
  store i32 %73, i32* %5, align 4
  br label %192

74:                                               ; preds = %54, %49
  %75 = load i64, i64* %6, align 8
  %76 = load i64*, i64** %7, align 8
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @rsrvdcltype(i64 %77)
  %79 = load i64*, i64** %8, align 8
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @rsrvdcltype(i64 %80)
  %82 = load i32, i32* %9, align 4
  %83 = call i32 (i8*, i64, i64, ...) @pwarn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %75, i64 %78, i64 %81, i32 %82)
  %84 = call i64 (i32, i8*, ...) @ask(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %74
  %87 = load i64*, i64** %7, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %8, align 8
  store i64 %88, i64* %89, align 8
  %90 = load i32, i32* @FSFATMOD, align 4
  store i32 %90, i32* %5, align 4
  br label %192

91:                                               ; preds = %74
  %92 = load i32, i32* %9, align 4
  %93 = call i64 (i32, i8*, ...) @ask(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i64*, i64** %8, align 8
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %7, align 8
  store i64 %97, i64* %98, align 8
  %99 = load i32, i32* @FSFATMOD, align 4
  store i32 %99, i32* %5, align 4
  br label %192

100:                                              ; preds = %91
  %101 = load i32, i32* @FSFATAL, align 4
  store i32 %101, i32* %5, align 4
  br label %192

102:                                              ; preds = %24
  %103 = load i64, i64* %6, align 8
  %104 = load i64*, i64** %7, align 8
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @rsrvdcltype(i64 %105)
  %107 = load i64*, i64** %8, align 8
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 (i8*, i64, i64, ...) @pwarn(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i64 %103, i64 %106, i64 %108, i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = call i64 (i32, i8*, ...) @ask(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %102
  %115 = load i64*, i64** %8, align 8
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %7, align 8
  store i64 %116, i64* %117, align 8
  %118 = load i32, i32* @FSFATMOD, align 4
  store i32 %118, i32* %5, align 4
  br label %192

119:                                              ; preds = %102
  %120 = call i64 (i32, i8*, ...) @ask(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i64*, i64** %7, align 8
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %8, align 8
  store i64 %124, i64* %125, align 8
  %126 = load i32, i32* @FSFATMOD, align 4
  store i32 %126, i32* %5, align 4
  br label %192

127:                                              ; preds = %119
  %128 = load i32, i32* @FSFATAL, align 4
  store i32 %128, i32* %5, align 4
  br label %192

129:                                              ; preds = %14
  %130 = load i64*, i64** %8, align 8
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @CLUST_FREE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = load i64*, i64** %8, align 8
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @CLUST_RSRVD, align 8
  %138 = icmp sge i64 %136, %137
  br i1 %138, label %139, label %166

139:                                              ; preds = %134, %129
  %140 = load i64, i64* %6, align 8
  %141 = load i64*, i64** %7, align 8
  %142 = load i64, i64* %141, align 8
  %143 = load i64*, i64** %8, align 8
  %144 = load i64, i64* %143, align 8
  %145 = call i64 @rsrvdcltype(i64 %144)
  %146 = load i32, i32* %9, align 4
  %147 = call i32 (i8*, i64, i64, ...) @pwarn(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0), i64 %140, i64 %142, i64 %145, i32 %146)
  %148 = call i64 (i32, i8*, ...) @ask(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %139
  %151 = load i64*, i64** %7, align 8
  %152 = load i64, i64* %151, align 8
  %153 = load i64*, i64** %8, align 8
  store i64 %152, i64* %153, align 8
  %154 = load i32, i32* @FSFATMOD, align 4
  store i32 %154, i32* %5, align 4
  br label %192

155:                                              ; preds = %139
  %156 = load i32, i32* %9, align 4
  %157 = call i64 (i32, i8*, ...) @ask(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load i64*, i64** %8, align 8
  %161 = load i64, i64* %160, align 8
  %162 = load i64*, i64** %7, align 8
  store i64 %161, i64* %162, align 8
  %163 = load i32, i32* @FSFATMOD, align 4
  store i32 %163, i32* %5, align 4
  br label %192

164:                                              ; preds = %155
  %165 = load i32, i32* @FSERROR, align 4
  store i32 %165, i32* %5, align 4
  br label %192

166:                                              ; preds = %134
  %167 = load i64, i64* %6, align 8
  %168 = load i64*, i64** %7, align 8
  %169 = load i64, i64* %168, align 8
  %170 = load i64*, i64** %8, align 8
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = call i32 (i8*, i64, i64, ...) @pwarn(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.11, i64 0, i64 0), i64 %167, i64 %169, i64 %171, i32 %172)
  %174 = call i64 (i32, i8*, ...) @ask(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %166
  %177 = load i64*, i64** %7, align 8
  %178 = load i64, i64* %177, align 8
  %179 = load i64*, i64** %8, align 8
  store i64 %178, i64* %179, align 8
  %180 = load i32, i32* @FSFATMOD, align 4
  store i32 %180, i32* %5, align 4
  br label %192

181:                                              ; preds = %166
  %182 = load i32, i32* %9, align 4
  %183 = call i64 (i32, i8*, ...) @ask(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %181
  %186 = load i64*, i64** %8, align 8
  %187 = load i64, i64* %186, align 8
  %188 = load i64*, i64** %7, align 8
  store i64 %187, i64* %188, align 8
  %189 = load i32, i32* @FSFATMOD, align 4
  store i32 %189, i32* %5, align 4
  br label %192

190:                                              ; preds = %181
  %191 = load i32, i32* @FSERROR, align 4
  store i32 %191, i32* %5, align 4
  br label %192

192:                                              ; preds = %190, %185, %176, %164, %159, %150, %127, %122, %114, %100, %95, %86, %72, %67
  %193 = load i32, i32* %5, align 4
  ret i32 %193
}

declare dso_local i32 @pwarn(i8*, i64, i64, ...) #1

declare dso_local i64 @rsrvdcltype(i64) #1

declare dso_local i64 @ask(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
