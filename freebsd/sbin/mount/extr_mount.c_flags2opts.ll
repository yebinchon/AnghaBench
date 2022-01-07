; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount.c_flags2opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount.c_flags2opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MNT_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@MNT_SYNCHRONOUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@MNT_NOEXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"noexec\00", align 1
@MNT_NOSUID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"nosuid\00", align 1
@MNT_UNION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@MNT_ASYNC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@MNT_NOATIME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"noatime\00", align 1
@MNT_NOCLUSTERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"noclusterr\00", align 1
@MNT_NOCLUSTERW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"noclusterw\00", align 1
@MNT_NOSYMFOLLOW = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"nosymfollow\00", align 1
@MNT_SUIDDIR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"suiddir\00", align 1
@MNT_MULTILABEL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"multilabel\00", align 1
@MNT_ACLS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"acls\00", align 1
@MNT_NFS4ACLS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"nfsv4acls\00", align 1
@MNT_UNTRUSTED = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"untrusted\00", align 1
@MNT_NOCOVER = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"nocover\00", align 1
@MNT_EMPTYDIR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"emptydir\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @flags2opts(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @MNT_RDONLY, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @catopt(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %3, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @MNT_SYNCHRONOUS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @catopt(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** %3, align 8
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @MNT_NOEXEC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = call i8* @catopt(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %26, i8** %3, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @MNT_NOSUID, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = call i8* @catopt(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* %34, i8** %3, align 8
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @MNT_UNION, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %3, align 8
  %42 = call i8* @catopt(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i8* %42, i8** %3, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @MNT_ASYNC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i8*, i8** %3, align 8
  %50 = call i8* @catopt(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i8* %50, i8** %3, align 8
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @MNT_NOATIME, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %3, align 8
  %58 = call i8* @catopt(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i8* %58, i8** %3, align 8
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @MNT_NOCLUSTERR, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i8*, i8** %3, align 8
  %66 = call i8* @catopt(i8* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  store i8* %66, i8** %3, align 8
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* @MNT_NOCLUSTERW, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %3, align 8
  %74 = call i8* @catopt(i8* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store i8* %74, i8** %3, align 8
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @MNT_NOSYMFOLLOW, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i8*, i8** %3, align 8
  %82 = call i8* @catopt(i8* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  store i8* %82, i8** %3, align 8
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* @MNT_SUIDDIR, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** %3, align 8
  %90 = call i8* @catopt(i8* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i8* %90, i8** %3, align 8
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @MNT_MULTILABEL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i8*, i8** %3, align 8
  %98 = call i8* @catopt(i8* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  store i8* %98, i8** %3, align 8
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* @MNT_ACLS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i8*, i8** %3, align 8
  %106 = call i8* @catopt(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  store i8* %106, i8** %3, align 8
  br label %107

107:                                              ; preds = %104, %99
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* @MNT_NFS4ACLS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i8*, i8** %3, align 8
  %114 = call i8* @catopt(i8* %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  store i8* %114, i8** %3, align 8
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* @MNT_UNTRUSTED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i8*, i8** %3, align 8
  %122 = call i8* @catopt(i8* %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  store i8* %122, i8** %3, align 8
  br label %123

123:                                              ; preds = %120, %115
  %124 = load i32, i32* %2, align 4
  %125 = load i32, i32* @MNT_NOCOVER, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i8*, i8** %3, align 8
  %130 = call i8* @catopt(i8* %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  store i8* %130, i8** %3, align 8
  br label %131

131:                                              ; preds = %128, %123
  %132 = load i32, i32* %2, align 4
  %133 = load i32, i32* @MNT_EMPTYDIR, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i8*, i8** %3, align 8
  %138 = call i8* @catopt(i8* %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  store i8* %138, i8** %3, align 8
  br label %139

139:                                              ; preds = %136, %131
  %140 = load i8*, i8** %3, align 8
  ret i8* %140
}

declare dso_local i8* @catopt(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
