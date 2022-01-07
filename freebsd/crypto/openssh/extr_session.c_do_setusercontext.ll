; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_do_setusercontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_do_setusercontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.passwd = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"setlogin failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"setgid\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"initgroups\00", align 1
@in_chroot = common dso_local global i32 0, align 4
@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"server lacks privileges to chroot to ChrootDirectory\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Failed to set uids to %u.\00", align 1
@LOGIN_SETALL = common dso_local global i32 0, align 4
@LOGIN_SETENV = common dso_local global i32 0, align 4
@LOGIN_SETPATH = common dso_local global i32 0, align 4
@LOGIN_SETUMASK = common dso_local global i32 0, align 4
@LOGIN_SETUSER = common dso_local global i32 0, align 4
@lc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_setusercontext(%struct.passwd* %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.passwd* %0, %struct.passwd** %2, align 8
  %6 = load %struct.passwd*, %struct.passwd** %2, align 8
  %7 = call i32 @platform_setusercontext(%struct.passwd* %6)
  %8 = call i64 (...) @platform_privileged_uidswap()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %88

10:                                               ; preds = %1
  %11 = load %struct.passwd*, %struct.passwd** %2, align 8
  %12 = getelementptr inbounds %struct.passwd, %struct.passwd* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @setlogin(i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @strerror(i32 %17)
  %19 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %10
  %21 = load %struct.passwd*, %struct.passwd** %2, align 8
  %22 = getelementptr inbounds %struct.passwd, %struct.passwd* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @setgid(i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @exit(i32 1) #3
  unreachable

29:                                               ; preds = %20
  %30 = load %struct.passwd*, %struct.passwd** %2, align 8
  %31 = getelementptr inbounds %struct.passwd, %struct.passwd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.passwd*, %struct.passwd** %2, align 8
  %34 = getelementptr inbounds %struct.passwd, %struct.passwd* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @initgroups(i32 %32, i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %29
  %42 = call i32 (...) @endgrent()
  %43 = load %struct.passwd*, %struct.passwd** %2, align 8
  %44 = call i32 @platform_setusercontext_post_groups(%struct.passwd* %43)
  %45 = load i32, i32* @in_chroot, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %85, label %47

47:                                               ; preds = %41
  %48 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %85

50:                                               ; preds = %47
  %51 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %52 = call i64 @strcasecmp(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %85

54:                                               ; preds = %50
  %55 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %56 = load %struct.passwd*, %struct.passwd** %2, align 8
  %57 = getelementptr inbounds %struct.passwd, %struct.passwd* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i8* @tilde_expand_filename(i8* %55, i64 %58)
  store i8* %59, i8** %5, align 8
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %61 = load %struct.passwd*, %struct.passwd** %2, align 8
  %62 = getelementptr inbounds %struct.passwd, %struct.passwd* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @snprintf(i8* %60, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %63)
  %65 = load i8*, i8** %5, align 8
  %66 = load %struct.passwd*, %struct.passwd** %2, align 8
  %67 = getelementptr inbounds %struct.passwd, %struct.passwd* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.passwd*, %struct.passwd** %2, align 8
  %70 = getelementptr inbounds %struct.passwd, %struct.passwd* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %73 = call i8* @percent_expand(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* %72, i8* null)
  store i8* %73, i8** %4, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = load %struct.passwd*, %struct.passwd** %2, align 8
  %76 = getelementptr inbounds %struct.passwd, %struct.passwd* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @safely_chroot(i8* %74, i64 %77)
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %84 = call i32 @free(i8* %83)
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  store i32 1, i32* @in_chroot, align 4
  br label %85

85:                                               ; preds = %54, %50, %47, %41
  %86 = load %struct.passwd*, %struct.passwd** %2, align 8
  %87 = call i32 @permanently_set_uid(%struct.passwd* %86)
  br label %98

88:                                               ; preds = %1
  %89 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %93 = call i64 @strcasecmp(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %91, %88
  br label %98

98:                                               ; preds = %97, %85
  %99 = call i64 (...) @getuid()
  %100 = load %struct.passwd*, %struct.passwd** %2, align 8
  %101 = getelementptr inbounds %struct.passwd, %struct.passwd* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = call i64 (...) @geteuid()
  %106 = load %struct.passwd*, %struct.passwd** %2, align 8
  %107 = getelementptr inbounds %struct.passwd, %struct.passwd* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %105, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %104, %98
  %111 = load %struct.passwd*, %struct.passwd** %2, align 8
  %112 = getelementptr inbounds %struct.passwd, %struct.passwd* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %110, %104
  ret void
}

declare dso_local i32 @platform_setusercontext(%struct.passwd*) #1

declare dso_local i64 @platform_privileged_uidswap(...) #1

declare dso_local i64 @setlogin(i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @setgid(i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @initgroups(i32, i32) #1

declare dso_local i32 @endgrent(...) #1

declare dso_local i32 @platform_setusercontext_post_groups(%struct.passwd*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @tilde_expand_filename(i8*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i8* @percent_expand(i8*, i8*, i32, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @safely_chroot(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @permanently_set_uid(%struct.passwd*) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i64 @geteuid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
