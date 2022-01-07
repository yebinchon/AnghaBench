; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/contrib/extr_gnome-ssh-askpass2.c_passphrase_dialog.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/contrib/extr_gnome-ssh-askpass2.c_passphrase_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"GNOME_SSH_ASKPASS_GRAB_SERVER\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"GNOME_SSH_ASKPASS_GRAB_POINTER\00", align 1
@GTK_WINDOW_TOPLEVEL = common dso_local global i32 0, align 4
@GTK_MESSAGE_QUESTION = common dso_local global i32 0, align 4
@GTK_BUTTONS_OK_CANCEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"OpenSSH\00", align 1
@GTK_WIN_POS_CENTER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GTK_RESPONSE_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@ok_dialog = common dso_local global i32 0, align 4
@GDK_CURRENT_TIME = common dso_local global i32 0, align 4
@GDK_GRAB_SUCCESS = common dso_local global i64 0, align 8
@GRAB_WAIT = common dso_local global i32 0, align 4
@GRAB_TRIES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"mouse\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"keyboard\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @passphrase_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @passphrase_dialog(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %15 = call i32* @getenv(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = call i32* @getenv(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %8, align 4
  %21 = load i32, i32* @GTK_WINDOW_TOPLEVEL, align 4
  %22 = call i32* @gtk_window_new(i32 %21)
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @GTK_WINDOW(i32* %23)
  %25 = load i32, i32* @GTK_MESSAGE_QUESTION, align 4
  %26 = load i32, i32* @GTK_BUTTONS_OK_CANCEL, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = call i32* @gtk_message_dialog_new(i32 %24, i32 0, i32 %25, i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  store i32* %28, i32** %12, align 8
  %29 = call i32* (...) @gtk_entry_new()
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @GTK_DIALOG(i32* %30)
  %32 = call i32 @gtk_dialog_get_content_area(i32 %31)
  %33 = call i32 @GTK_BOX(i32 %32)
  %34 = load i32*, i32** %13, align 8
  %35 = load i32, i32* @FALSE, align 4
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @gtk_box_pack_start(i32 %33, i32* %34, i32 %35, i32 %36, i32 0)
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @GTK_ENTRY(i32* %38)
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @gtk_entry_set_visibility(i32 %39, i32 %40)
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @gtk_widget_grab_focus(i32* %42)
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @gtk_widget_show(i32* %44)
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @GTK_WINDOW(i32* %46)
  %48 = call i32 @gtk_window_set_title(i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @GTK_WINDOW(i32* %49)
  %51 = load i32, i32* @GTK_WIN_POS_CENTER, align 4
  %52 = call i32 @gtk_window_set_position(i32 %50, i32 %51)
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 @GTK_WINDOW(i32* %53)
  %55 = load i32, i32* @TRUE, align 4
  %56 = call i32 @gtk_window_set_keep_above(i32 %54, i32 %55)
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @GTK_DIALOG(i32* %57)
  %59 = load i32, i32* @GTK_RESPONSE_OK, align 4
  %60 = call i32 @gtk_dialog_set_default_response(i32 %58, i32 %59)
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @G_OBJECT(i32* %61)
  %63 = load i32, i32* @ok_dialog, align 4
  %64 = call i32 @G_CALLBACK(i32 %63)
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @g_signal_connect(i32 %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %64, i32* %65)
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @GTK_WINDOW(i32* %67)
  %69 = load i32, i32* @TRUE, align 4
  %70 = call i32 @gtk_window_set_keep_above(i32 %68, i32 %69)
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @gtk_widget_show_now(i32* %71)
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %96, %75
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @GTK_WIDGET(i32* %77)
  %79 = call i32 @gtk_widget_get_window(i32 %78)
  %80 = load i32, i32* @TRUE, align 4
  %81 = load i32, i32* @GDK_CURRENT_TIME, align 4
  %82 = call i64 @gdk_pointer_grab(i32 %79, i32 %80, i32 0, i32* null, i32* null, i32 %81)
  store i64 %82, i64* %14, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* @GDK_GRAB_SUCCESS, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %97

87:                                               ; preds = %76
  %88 = load i32, i32* @GRAB_WAIT, align 4
  %89 = mul nsw i32 %88, 1000
  %90 = call i32 @usleep(i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* @GRAB_TRIES, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %196

96:                                               ; preds = %87
  br label %76

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %1
  br label %99

99:                                               ; preds = %119, %98
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @GTK_WIDGET(i32* %100)
  %102 = call i32 @gtk_widget_get_window(i32 %101)
  %103 = load i32, i32* @FALSE, align 4
  %104 = load i32, i32* @GDK_CURRENT_TIME, align 4
  %105 = call i64 @gdk_keyboard_grab(i32 %102, i32 %103, i32 %104)
  store i64 %105, i64* %14, align 8
  %106 = load i64, i64* %14, align 8
  %107 = load i64, i64* @GDK_GRAB_SUCCESS, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %120

110:                                              ; preds = %99
  %111 = load i32, i32* @GRAB_WAIT, align 4
  %112 = mul nsw i32 %111, 1000
  %113 = call i32 @usleep(i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* @GRAB_TRIES, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %193

119:                                              ; preds = %110
  br label %99

120:                                              ; preds = %109
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call i32 (...) @gdk_x11_grab_server()
  br label %125

125:                                              ; preds = %123, %120
  %126 = load i32*, i32** %12, align 8
  %127 = call i32 @GTK_DIALOG(i32* %126)
  %128 = call i32 @gtk_dialog_run(i32 %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = call i32 (...) @gdk_x11_get_default_xdisplay()
  %133 = call i32 @XUngrabServer(i32 %132)
  br label %134

134:                                              ; preds = %131, %125
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* @GDK_CURRENT_TIME, align 4
  %139 = call i32 @gdk_pointer_ungrab(i32 %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* @GDK_CURRENT_TIME, align 4
  %142 = call i32 @gdk_keyboard_ungrab(i32 %141)
  %143 = call i32 (...) @gdk_flush()
  %144 = load i32*, i32** %13, align 8
  %145 = call i32 @GTK_ENTRY(i32* %144)
  %146 = call i32 @gtk_entry_get_text(i32 %145)
  %147 = call i8* @g_strdup(i32 %146)
  store i8* %147, i8** %5, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @GTK_RESPONSE_OK, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %171

151:                                              ; preds = %140
  %152 = load i8*, i8** %5, align 8
  %153 = load i8*, i8** %5, align 8
  %154 = call i32 @strlen(i8* %153)
  %155 = call i8* @g_locale_from_utf8(i8* %152, i32 %154, i32* null, i32* null, i32* null)
  store i8* %155, i8** %6, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %167

158:                                              ; preds = %151
  %159 = load i8*, i8** %6, align 8
  %160 = call i32 @puts(i8* %159)
  %161 = load i8*, i8** %6, align 8
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 @strlen(i8* %162)
  %164 = call i32 @memset(i8* %161, i8 signext 0, i32 %163)
  %165 = load i8*, i8** %6, align 8
  %166 = call i32 @g_free(i8* %165)
  br label %170

167:                                              ; preds = %151
  %168 = load i8*, i8** %5, align 8
  %169 = call i32 @puts(i8* %168)
  br label %170

170:                                              ; preds = %167, %158
  br label %171

171:                                              ; preds = %170, %140
  %172 = load i8*, i8** %5, align 8
  %173 = load i8*, i8** %5, align 8
  %174 = call i32 @strlen(i8* %173)
  %175 = call i32 @memset(i8* %172, i8 signext 8, i32 %174)
  %176 = load i32*, i32** %13, align 8
  %177 = call i32 @GTK_ENTRY(i32* %176)
  %178 = load i8*, i8** %5, align 8
  %179 = call i32 @gtk_entry_set_text(i32 %177, i8* %178)
  %180 = load i8*, i8** %5, align 8
  %181 = load i8*, i8** %5, align 8
  %182 = call i32 @strlen(i8* %181)
  %183 = call i32 @memset(i8* %180, i8 signext 0, i32 %182)
  %184 = load i8*, i8** %5, align 8
  %185 = call i32 @g_free(i8* %184)
  %186 = load i32*, i32** %12, align 8
  %187 = call i32 @gtk_widget_destroy(i32* %186)
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @GTK_RESPONSE_OK, align 4
  %190 = icmp eq i32 %188, %189
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i32 0, i32 -1
  store i32 %192, i32* %2, align 4
  br label %208

193:                                              ; preds = %118
  %194 = load i32, i32* @GDK_CURRENT_TIME, align 4
  %195 = call i32 @gdk_pointer_ungrab(i32 %194)
  br label %196

196:                                              ; preds = %193, %95
  %197 = load i32, i32* %9, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = call i32 (...) @gdk_x11_get_default_xdisplay()
  %201 = call i32 @XUngrabServer(i32 %200)
  br label %202

202:                                              ; preds = %199, %196
  %203 = load i32*, i32** %12, align 8
  %204 = call i32 @gtk_widget_destroy(i32* %203)
  %205 = load i32*, i32** %11, align 8
  %206 = load i8*, i8** %4, align 8
  %207 = call i32 @report_failed_grab(i32* %205, i8* %206)
  store i32 -1, i32* %2, align 4
  br label %208

208:                                              ; preds = %202, %171
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32* @gtk_window_new(i32) #1

declare dso_local i32* @gtk_message_dialog_new(i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @GTK_WINDOW(i32*) #1

declare dso_local i32* @gtk_entry_new(...) #1

declare dso_local i32 @gtk_box_pack_start(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @GTK_BOX(i32) #1

declare dso_local i32 @gtk_dialog_get_content_area(i32) #1

declare dso_local i32 @GTK_DIALOG(i32*) #1

declare dso_local i32 @gtk_entry_set_visibility(i32, i32) #1

declare dso_local i32 @GTK_ENTRY(i32*) #1

declare dso_local i32 @gtk_widget_grab_focus(i32*) #1

declare dso_local i32 @gtk_widget_show(i32*) #1

declare dso_local i32 @gtk_window_set_title(i32, i8*) #1

declare dso_local i32 @gtk_window_set_position(i32, i32) #1

declare dso_local i32 @gtk_window_set_keep_above(i32, i32) #1

declare dso_local i32 @gtk_dialog_set_default_response(i32, i32) #1

declare dso_local i32 @g_signal_connect(i32, i8*, i32, i32*) #1

declare dso_local i32 @G_OBJECT(i32*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local i32 @gtk_widget_show_now(i32*) #1

declare dso_local i64 @gdk_pointer_grab(i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @gtk_widget_get_window(i32) #1

declare dso_local i32 @GTK_WIDGET(i32*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i64 @gdk_keyboard_grab(i32, i32, i32) #1

declare dso_local i32 @gdk_x11_grab_server(...) #1

declare dso_local i32 @gtk_dialog_run(i32) #1

declare dso_local i32 @XUngrabServer(i32) #1

declare dso_local i32 @gdk_x11_get_default_xdisplay(...) #1

declare dso_local i32 @gdk_pointer_ungrab(i32) #1

declare dso_local i32 @gdk_keyboard_ungrab(i32) #1

declare dso_local i32 @gdk_flush(...) #1

declare dso_local i8* @g_strdup(i32) #1

declare dso_local i32 @gtk_entry_get_text(i32) #1

declare dso_local i8* @g_locale_from_utf8(i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @gtk_entry_set_text(i32, i8*) #1

declare dso_local i32 @gtk_widget_destroy(i32*) #1

declare dso_local i32 @report_failed_grab(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
