; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_rshd.c_rshd_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_rshd.c_rshd_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FD_SETSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"fd too large\00", align 1
@RSHD_BUFSIZ = common dso_local global i32 0, align 4
@RSH_BUFSIZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"select: %s\00", align 1
@ivec_in = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"read: %s\00", align 1
@ivec_out = common dso_local global i32* null, align 8
@AUTH_KRB5 = common dso_local global i64 0, align 8
@auth_method = common dso_local global i64 0, align 8
@protocol_version = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32)* @rshd_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rshd_loop(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 2, i32* %17, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @FD_SETSIZE, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @FD_SETSIZE, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @FD_SETSIZE, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %24, %7
  %33 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  %35 = call i32 @FD_ZERO(i32* %15)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @FD_SET(i32 %36, i32* %15)
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @FD_SET(i32 %38, i32* %15)
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @FD_SET(i32 %40, i32* %15)
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @max(i32 %43, i32 %44)
  %46 = call i32 @max(i32 %42, i32 %45)
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* @RSHD_BUFSIZ, align 4
  %49 = load i32, i32* @RSH_BUFSIZ, align 4
  %50 = call i32 @max(i32 %48, i32 %49)
  %51 = call i8* @malloc(i32 %50)
  store i8* %51, i8** %18, align 8
  %52 = load i8*, i8** %18, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %34
  %55 = call i32 (i8*, ...) @syslog_and_die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %34
  br label %57

57:                                               ; preds = %190, %67, %56
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %20, align 4
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @select(i32 %59, i32* %20, i32* null, i32* null, i32* null)
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %19, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load i64, i64* @errno, align 8
  %65 = load i64, i64* @EINTR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %57

68:                                               ; preds = %63
  %69 = load i64, i64* @errno, align 8
  %70 = call i32 @strerror(i64 %69)
  %71 = call i32 (i8*, ...) @syslog_and_die(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %57
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @FD_ISSET(i32 %74, i32* %20)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %108

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = load i8*, i8** %18, align 8
  %80 = load i32, i32* @RSHD_BUFSIZ, align 4
  %81 = load i32*, i32** @ivec_in, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @do_read(i32 %78, i8* %79, i32 %80, i32 %83)
  store i32 %84, i32* %19, align 4
  %85 = load i32, i32* %19, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %77
  %88 = load i64, i64* @errno, align 8
  %89 = call i32 @strerror(i64 %88)
  %90 = call i32 (i8*, ...) @syslog_and_die(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  br label %107

91:                                               ; preds = %77
  %92 = load i32, i32* %19, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @close(i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @close(i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @FD_CLR(i32 %99, i32* %15)
  br label %106

101:                                              ; preds = %91
  %102 = load i32, i32* %9, align 4
  %103 = load i8*, i8** %18, align 8
  %104 = load i32, i32* %19, align 4
  %105 = call i32 @net_write(i32 %102, i8* %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %94
  br label %107

107:                                              ; preds = %106, %87
  br label %108

108:                                              ; preds = %107, %73
  %109 = load i32, i32* %11, align 4
  %110 = call i64 @FD_ISSET(i32 %109, i32* %20)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %149

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = load i8*, i8** %18, align 8
  %115 = load i32, i32* @RSH_BUFSIZ, align 4
  %116 = call i32 @read(i32 %113, i8* %114, i32 %115)
  store i32 %116, i32* %19, align 4
  %117 = load i32, i32* %19, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load i64, i64* @errno, align 8
  %121 = call i32 @strerror(i64 %120)
  %122 = call i32 (i8*, ...) @syslog_and_die(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  br label %148

123:                                              ; preds = %112
  %124 = load i32, i32* %19, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %123
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @close(i32 %127)
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @close(i32 %129)
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @FD_CLR(i32 %131, i32* %15)
  %133 = load i32, i32* %17, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %17, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %126
  %137 = call i32 @exit(i32 0) #3
  unreachable

138:                                              ; preds = %126
  br label %147

139:                                              ; preds = %123
  %140 = load i32, i32* %10, align 4
  %141 = load i8*, i8** %18, align 8
  %142 = load i32, i32* %19, align 4
  %143 = load i32*, i32** @ivec_out, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @do_write(i32 %140, i8* %141, i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %139, %138
  br label %148

148:                                              ; preds = %147, %119
  br label %149

149:                                              ; preds = %148, %108
  %150 = load i32, i32* %13, align 4
  %151 = call i64 @FD_ISSET(i32 %150, i32* %20)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %190

153:                                              ; preds = %149
  %154 = load i32, i32* %13, align 4
  %155 = load i8*, i8** %18, align 8
  %156 = load i32, i32* @RSH_BUFSIZ, align 4
  %157 = call i32 @read(i32 %154, i8* %155, i32 %156)
  store i32 %157, i32* %19, align 4
  %158 = load i32, i32* %19, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %153
  %161 = load i64, i64* @errno, align 8
  %162 = call i32 @strerror(i64 %161)
  %163 = call i32 (i8*, ...) @syslog_and_die(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %162)
  br label %189

164:                                              ; preds = %153
  %165 = load i32, i32* %19, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %164
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @close(i32 %168)
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @close(i32 %170)
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @FD_CLR(i32 %172, i32* %15)
  %174 = load i32, i32* %17, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %17, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %167
  %178 = call i32 @exit(i32 0) #3
  unreachable

179:                                              ; preds = %167
  br label %188

180:                                              ; preds = %164
  %181 = load i32, i32* %12, align 4
  %182 = load i8*, i8** %18, align 8
  %183 = load i32, i32* %19, align 4
  %184 = load i32*, i32** @ivec_out, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @do_write(i32 %181, i8* %182, i32 %183, i32 %186)
  br label %188

188:                                              ; preds = %180, %179
  br label %189

189:                                              ; preds = %188, %160
  br label %190

190:                                              ; preds = %189, %149
  br label %57
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @syslog_and_die(i8*, ...) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @do_read(i32, i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @FD_CLR(i32, i32*) #1

declare dso_local i32 @net_write(i32, i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @do_write(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
