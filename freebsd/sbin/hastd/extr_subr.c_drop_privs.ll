; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_subr.c_drop_privs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_subr.c_drop_privs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i8*, i64, i32, i32 }
%struct.jail = type { i8*, i32*, i64, i32*, i64, i32*, i32, i32 }
%struct.passwd = type { i64, i64, i32 }

@errno = common dso_local global i64 0, align 8
@HAST_USER = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unable to find info about '%s' user\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"'%s' user doesn't exist.\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@JAIL_API_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"hastctl\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"hastd: %s (%s)\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Unable to jail to directory to %s\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Unable to change root directory to %s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Unable to set groups to gid %u\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Unable to set gid to %u\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Unable to set uid to %u\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"Privileges successfully dropped using %s%s+setgid+setuid.\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"capsicum+\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"jail\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"chroot\00", align 1
@CAP_FLOCK = common dso_local global i32 0, align 4
@CAP_IOCTL = common dso_local global i32 0, align 4
@CAP_PREAD = common dso_local global i32 0, align 4
@CAP_PWRITE = common dso_local global i32 0, align 4
@HAST_ROLE_PRIMARY = common dso_local global i64 0, align 8
@HAST_ROLE_SECONDARY = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drop_privs(%struct.hast_resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hast_resource*, align 8
  %4 = alloca [16 x i8], align 16
  %5 = alloca %struct.jail, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [1 x i64], align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hast_resource* %0, %struct.hast_resource** %3, align 8
  store i64 0, i64* @errno, align 8
  %16 = load i32, i32* @HAST_USER, align 4
  %17 = call %struct.passwd* @getpwnam(i32 %16)
  store %struct.passwd* %17, %struct.passwd** %6, align 8
  %18 = load %struct.passwd*, %struct.passwd** %6, align 8
  %19 = icmp eq %struct.passwd* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load i64, i64* @errno, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @LOG_ERR, align 4
  %25 = load i32, i32* @HAST_USER, align 4
  %26 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 -1, i32* %2, align 4
  br label %205

27:                                               ; preds = %20
  %28 = load i32, i32* @HAST_USER, align 4
  %29 = call i32 @pjdlog_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i64, i64* @ENOENT, align 8
  store i64 %30, i64* @errno, align 8
  store i32 -1, i32* %2, align 4
  br label %205

31:                                               ; preds = %1
  %32 = call i32 @bzero(%struct.jail* %5, i32 56)
  %33 = load i32, i32* @JAIL_API_VERSION, align 4
  %34 = getelementptr inbounds %struct.jail, %struct.jail* %5, i32 0, i32 7
  store i32 %33, i32* %34, align 4
  %35 = load %struct.passwd*, %struct.passwd** %6, align 8
  %36 = getelementptr inbounds %struct.passwd, %struct.passwd* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.jail, %struct.jail* %5, i32 0, i32 6
  store i32 %37, i32* %38, align 8
  %39 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %40 = icmp eq %struct.hast_resource* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %43 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %42, i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %54

44:                                               ; preds = %31
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %46 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %47 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %50 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @role2str(i64 %51)
  %53 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %45, i32 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %48, i8* %52)
  br label %54

54:                                               ; preds = %44, %41
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %56 = getelementptr inbounds %struct.jail, %struct.jail* %5, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  %57 = getelementptr inbounds %struct.jail, %struct.jail* %5, i32 0, i32 5
  store i32* null, i32** %57, align 8
  %58 = getelementptr inbounds %struct.jail, %struct.jail* %5, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct.jail, %struct.jail* %5, i32 0, i32 3
  store i32* null, i32** %59, align 8
  %60 = getelementptr inbounds %struct.jail, %struct.jail* %5, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = getelementptr inbounds %struct.jail, %struct.jail* %5, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = call i64 @jail(%struct.jail* %5)
  %63 = icmp sge i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 1, i32* %15, align 4
  br label %83

65:                                               ; preds = %54
  store i32 0, i32* %15, align 4
  %66 = load i32, i32* @LOG_WARNING, align 4
  %67 = load %struct.passwd*, %struct.passwd** %6, align 8
  %68 = getelementptr inbounds %struct.passwd, %struct.passwd* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = load %struct.passwd*, %struct.passwd** %6, align 8
  %72 = getelementptr inbounds %struct.passwd, %struct.passwd* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @chroot(i32 %73)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %82

76:                                               ; preds = %65
  %77 = load i32, i32* @LOG_ERR, align 4
  %78 = load %struct.passwd*, %struct.passwd** %6, align 8
  %79 = getelementptr inbounds %struct.passwd, %struct.passwd* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  store i32 -1, i32* %2, align 4
  br label %205

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82, %64
  %84 = call i64 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @PJDLOG_VERIFY(i32 %86)
  %88 = load %struct.passwd*, %struct.passwd** %6, align 8
  %89 = getelementptr inbounds %struct.passwd, %struct.passwd* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds [1 x i64], [1 x i64]* %13, i64 0, i64 0
  store i64 %90, i64* %91, align 8
  %92 = getelementptr inbounds [1 x i64], [1 x i64]* %13, i64 0, i64 0
  %93 = call i32 @setgroups(i32 1, i64* %92)
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %102

95:                                               ; preds = %83
  %96 = load i32, i32* @LOG_ERR, align 4
  %97 = load %struct.passwd*, %struct.passwd** %6, align 8
  %98 = getelementptr inbounds %struct.passwd, %struct.passwd* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %100)
  store i32 -1, i32* %2, align 4
  br label %205

102:                                              ; preds = %83
  %103 = load %struct.passwd*, %struct.passwd** %6, align 8
  %104 = getelementptr inbounds %struct.passwd, %struct.passwd* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @setgid(i64 %105)
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load i32, i32* @LOG_ERR, align 4
  %110 = load %struct.passwd*, %struct.passwd** %6, align 8
  %111 = getelementptr inbounds %struct.passwd, %struct.passwd* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %113)
  store i32 -1, i32* %2, align 4
  br label %205

115:                                              ; preds = %102
  %116 = load %struct.passwd*, %struct.passwd** %6, align 8
  %117 = getelementptr inbounds %struct.passwd, %struct.passwd* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @setuid(i64 %118)
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load i32, i32* @LOG_ERR, align 4
  %123 = load %struct.passwd*, %struct.passwd** %6, align 8
  %124 = getelementptr inbounds %struct.passwd, %struct.passwd* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %122, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %126)
  store i32 -1, i32* %2, align 4
  br label %205

128:                                              ; preds = %115
  store i32 0, i32* %14, align 4
  %129 = call i64 @getresuid(i64* %7, i64* %8, i64* %9)
  %130 = icmp eq i64 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @PJDLOG_VERIFY(i32 %131)
  %133 = load i64, i64* %7, align 8
  %134 = load %struct.passwd*, %struct.passwd** %6, align 8
  %135 = getelementptr inbounds %struct.passwd, %struct.passwd* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %133, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @PJDLOG_VERIFY(i32 %138)
  %140 = load i64, i64* %8, align 8
  %141 = load %struct.passwd*, %struct.passwd** %6, align 8
  %142 = getelementptr inbounds %struct.passwd, %struct.passwd* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %140, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @PJDLOG_VERIFY(i32 %145)
  %147 = load i64, i64* %9, align 8
  %148 = load %struct.passwd*, %struct.passwd** %6, align 8
  %149 = getelementptr inbounds %struct.passwd, %struct.passwd* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %147, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @PJDLOG_VERIFY(i32 %152)
  %154 = call i64 @getresgid(i64* %10, i64* %11, i64* %12)
  %155 = icmp eq i64 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @PJDLOG_VERIFY(i32 %156)
  %158 = load i64, i64* %10, align 8
  %159 = load %struct.passwd*, %struct.passwd** %6, align 8
  %160 = getelementptr inbounds %struct.passwd, %struct.passwd* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %158, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @PJDLOG_VERIFY(i32 %163)
  %165 = load i64, i64* %11, align 8
  %166 = load %struct.passwd*, %struct.passwd** %6, align 8
  %167 = getelementptr inbounds %struct.passwd, %struct.passwd* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %165, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @PJDLOG_VERIFY(i32 %170)
  %172 = load i64, i64* %12, align 8
  %173 = load %struct.passwd*, %struct.passwd** %6, align 8
  %174 = getelementptr inbounds %struct.passwd, %struct.passwd* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %172, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @PJDLOG_VERIFY(i32 %177)
  %179 = call i32 @getgroups(i32 0, i64* null)
  %180 = icmp eq i32 %179, 1
  %181 = zext i1 %180 to i32
  %182 = call i32 @PJDLOG_VERIFY(i32 %181)
  %183 = getelementptr inbounds [1 x i64], [1 x i64]* %13, i64 0, i64 0
  %184 = call i32 @getgroups(i32 1, i64* %183)
  %185 = icmp eq i32 %184, 1
  %186 = zext i1 %185 to i32
  %187 = call i32 @PJDLOG_VERIFY(i32 %186)
  %188 = getelementptr inbounds [1 x i64], [1 x i64]* %13, i64 0, i64 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.passwd*, %struct.passwd** %6, align 8
  %191 = getelementptr inbounds %struct.passwd, %struct.passwd* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %189, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 @PJDLOG_VERIFY(i32 %194)
  %196 = load i32, i32* %14, align 4
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %200 = load i32, i32* %15, align 4
  %201 = icmp ne i32 %200, 0
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)
  %204 = call i32 @pjdlog_debug(i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i8* %199, i8* %203)
  store i32 0, i32* %2, align 4
  br label %205

205:                                              ; preds = %128, %121, %108, %95, %76, %27, %23
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local %struct.passwd* @getpwnam(i32) #1

declare dso_local i32 @pjdlog_errno(i32, i8*, ...) #1

declare dso_local i32 @pjdlog_error(i8*, i32) #1

declare dso_local i32 @bzero(%struct.jail*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @role2str(i64) #1

declare dso_local i64 @jail(%struct.jail*) #1

declare dso_local i32 @chroot(i32) #1

declare dso_local i32 @PJDLOG_VERIFY(i32) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @setgroups(i32, i64*) #1

declare dso_local i32 @setgid(i64) #1

declare dso_local i32 @setuid(i64) #1

declare dso_local i64 @getresuid(i64*, i64*, i64*) #1

declare dso_local i64 @getresgid(i64*, i64*, i64*) #1

declare dso_local i32 @getgroups(i32, i64*) #1

declare dso_local i32 @pjdlog_debug(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
